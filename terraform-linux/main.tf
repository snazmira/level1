#setup remote state
terraform {
  backend "azurerm" {
    resource_group_name = "rg-terraformstate-linux"
    storage_account_name = "myterrastatelinux"
    container_name = "terraform-linux"
    key = "terraform-linux.tfstate"
  }
}



module "azurerm_vm" {
  source              = "./azurerm_vm"
  virtual_network = var.virtual_network
  subnet = var.subnet
  public_ip = var.public_ip
  network_security_group = var.network_security_group
  network_interface = var.network_interface
  network_interface_security_group_association = var.network_interface_security_group_association
  storage_account = var.storage_account
  virtual_machine = var.virtual_machine

}
