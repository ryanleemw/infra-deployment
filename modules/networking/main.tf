# --- networking/main.tf ---

resource "google_compute_subnetwork" "gcp_subnet" {
  count         = length(var.private_cidrs)
  name          = var.subnet[count.index]
  ip_cidr_range = var.private_cidrs[count.index]
  project       = var.project
  region        = var.region[count.index]
  network       = google_compute_network.gcp_vpc.id
  dynamic "secondary_ip_range" {
    for_each = var.secondary_cidrs[count.index]

    content {
      range_name    = "gke-range-${secondary_ip_range.key}-${var.region[count.index]}"
      ip_cidr_range = secondary_ip_range.value
    }
  }
}

resource "google_compute_subnetwork" "gcp_proxy_subnet" {
  project       = var.project
  name          = var.proxy_name
  ip_cidr_range = var.regional_proxy_range
  region        = var.region[1]
  purpose       = var.proxy_purpose
  role          = var.subnet_role
  network       = google_compute_network.gcp_vpc.id
}

resource "google_compute_network" "gcp_vpc" {
  name                    = var.network
  project                 = var.project
  routing_mode            = "REGIONAL"
  auto_create_subnetworks = false
}


resource "google_compute_global_address" "apigee_range" {
  project       = var.project
  name          = var.apigee_name
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 22
  address       = var.apigee_range
  network       = google_compute_network.gcp_vpc.id
}
