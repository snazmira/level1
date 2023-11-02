
resource "random_pet" "rg_name" {
  prefix = var.prefix
}

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = random_pet.rg_name.id
}

module "azurerm_net" {
  source              = "./azurerm_net"

}

module "azurerm_storage" {
  source              = "./azurerm_storage"
  
}

module "azurerm_vm" {
  source              = "./azurerm_vm"

}