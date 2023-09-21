# --- root.tf variables ---



variable "secondary_cidrs" {
  type = list(list(string))
  default = [
    ["10.0.3.0/24", "10.0.8.0/24"],  # secondary IP ranges for us-east1
    ["10.0.9.0/24", "10.0.10.0/24"], # secondary IP ranges for us-central1
  ]
}

variable "ip_ranges" {
  description = "IPs or IP ranges used by VPCs."
  type        = map(map(string))
  default = {
    main = {
      subnet            = "10.0.1.0/24"
      subnet_proxy      = "10.10.0.0/24"
      subnet_vpc_access = "10.10.10.0/28"
      psc_addr          = "10.0.0.100"
    }
    onprem = {
      subnet = "172.16.1.0/24"
    }
    prj1 = {
      subnet   = "10.0.2.0/24"
      psc_addr = "10.0.0.200"
    }
  }
}
