# --- networking/outputs.tf ---

output "vpc_id" {
  value = google_compute_network.gcp_vpc.id
}

output "vpc_self_link" {
  value = google_compute_network.gcp_vpc.self_link
}