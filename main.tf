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