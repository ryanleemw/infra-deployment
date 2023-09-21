# --- root/provider.tf ---
terraform {
#   backend "gcs" {
#     bucket = "rwl-factory-mde-tf"
#     prefix = "terraform/state"
#   }
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}