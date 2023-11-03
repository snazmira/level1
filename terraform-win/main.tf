#setup remote state
terraform {
  backend "azurerm" {
    resource_group_name = "rg-terraformstate-win"
    storage_account_name = "myterrastatewin"
    container_name = "terraform-win"
    key = "terraform-win.tfstate"
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
  key_vault = var.key_vault
  key_vault_secret = var.key_vault_secret
  virtual_machine_extension = var.virtual_machine_extension
  virtual_machine = var.virtual_machine

}