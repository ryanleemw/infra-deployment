# --- root/main.tf ----
module "networking" {
  source          = "./modules/networking"
  vpc_cidr        = "10.0.0.0/16"
  private_cidrs   = ["10.0.1.0/24", "10.0.2.0/24"]
  secondary_cidrs = var.secondary_cidrs
  apigee_name     = "apigee-eval-range"
  apigee_range    = "10.0.4.0"
  vpc_connector   = "10.10.10.0/28"
  vpc_con_subnet  = "rwl-vpc-con-usc1-subnet"
  #vpc_con_name         = "vpc-con-usc1"
  #vpc_machine_type     = "e2-standard-4"
  #vpc_con_region       = "us-central1"
  proxy_name           = "rwl-proxy-usc1-subnet"
  regional_proxy_range = "10.0.14.0/24"
  proxy_purpose        = "REGIONAL_MANAGED_PROXY"
  subnet_role          = "ACTIVE"
  project              = local.project
  region               = local.region
  network              = local.network
  subnet               = local.subnet
}