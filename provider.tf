terraform {
  required_providers {
    aci = {
      source = "ciscodevnet/aci"
    }
  }
}

provider "aci" {
  username = var.cisco_apic_username
  password = var.cisco_apic_password
  url      = var.cisco_apic_url
}
