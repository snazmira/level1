variable "resource_group_location" {
  type        = string
  default     = "eastus2"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
  default     = "azureuser"
}

variable "virtual_network" {
  
}

variable "subnet" {
  
}

variable "public_ip" {
  
}

variable "network_security_group" {
  
}

variable "network_interface" {
  
}


variable "network_interface_security_group_association" {
  
}

variable "storage_account" {
  
}

variable "virtual_machine" {
  
}

