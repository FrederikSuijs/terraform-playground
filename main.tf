module "my_super_awesome_module" {
  for_each = var.items
  source = "git::https://github.com/FrederikSuijs/terraform-modules-monorepo.git//null_resource?ref=new-null-resource-module"

  name    = each.value.name
  boolean = each.value.boolean
}

module "my_random_module" {
  #source = "../terraform-modules-monorepo//random"
  source = "git::https://github.com/FrederikSuijs/terraform-modules-monorepo.git//random?ref=new-null-resource-module"
}

output "random_string" {
  value = module.my_random_module.random_string.result
}

locals {
  list_of_items = toset([
    "a","b","c"
  ])
}

module "my_hello_tenant" {
  #for_each = local.list_of_items
  count = 50
  source = "git::https://fsuijs@gitlab.cmt.apps.telenet.be/cloud-and-infrastructure/sdn/terraform-modules/hello-tenant"
  #tenant_name = each.value
  #vrf_name = "${each.value}-vrf"
  #bd_name = "${each.value}-bd"
  tenant_name = "tenant${count.index}"
  vrf_name = "vrf${count.index}-vrf"
  bd_name = "bd${count.index}-bd"
}