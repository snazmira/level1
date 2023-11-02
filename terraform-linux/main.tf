
resource "random_pet" "rg_name" {
  prefix = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = random_pet.rg_name.id
}

module "azurerm_net" {
  source              = "./azurerm_net"
  location = var.resource_group_location
  resource_group_name = var.resource_group_name_prefix
}


module "azurerm_vm" {
  source              = "./azurerm_vm"
  location = var.resource_group_location
  resource_group_name = var.resource_group_name_prefix
}