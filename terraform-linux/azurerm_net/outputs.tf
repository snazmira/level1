output "virtual_network" {
  value = azurerm_virtual_network.my_terraform_network.id
}

output "subnet" {
  value = azurerm_subnet.my_terraform_subnet.id
}

output "public_ip" {
  value = azurerm_public_ip.my_terraform_public_ip.id
}


output "network_security_group" {
  value = azurerm_network_security_group.my_terraform_nsg.id
}



output "network_interface" {
  value = azurerm_network_interface.my_terraform_nic.id
}


output "network_interface_security_group_association" {
  value = azurerm_network_interface_security_group_association.example.id
}


output "subnet" {
  value = azurerm_subnet.my_terraform_subnet.id
}


