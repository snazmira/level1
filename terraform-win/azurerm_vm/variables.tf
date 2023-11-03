variable "resource_group_location" {
  default     = "westus3"
  description = "Location of the resource group."
}

variable "prefix" {
  type        = string
  default     = "win-vm-02"
  description = "Prefix of the resource name"
}

variable "kv_secret_name" {
  type = string
  default = "wins-kv-002"
  description = "kv secret name"
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

variable "key_vault" {
  
}

variable "key_vault_secret" {
  
}

variable "virtual_machine_extension" {
  
}


variable "virtual_machine" {
  
}