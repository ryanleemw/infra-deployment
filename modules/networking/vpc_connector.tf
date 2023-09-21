# --- networking/vpc_connector.tf ---

/* resource "google_vpc_access_connector" "connector" {
  name = var.vpc_con_name
  subnet {
    name = google_compute_subnetwork.custom_test.name
  }
  region       = var.vpc_con_region
  machine_type = var.vpc_machine_type
}
*/
resource "google_compute_subnetwork" "custom_test" {
  project       = var.project
  name          = var.vpc_con_subnet
  ip_cidr_range = var.vpc_connector
  region        = var.region[1]
  network       = var.network
}