locals {
  project          = "rwl-factory-mde"
  region           = ["us-east1", "us-central1"]
  network          = "rwl-mde-factory-net"
  subnet           = ["rwl-use1-subnet1", "rwl-usc1-subnet2"]
  zones            = ["us-east1-b", "us-east1-c", "us-east1-d", "us-central1-a", "us-central1-b", "us-central1-c", "us-central1-f"]
  ilb_region       = "us-central1"
}