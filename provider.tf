# --- root/provider.tf ---
terraform {
  backend "gcs" {
    bucket = "new_tfstate_bucket"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}