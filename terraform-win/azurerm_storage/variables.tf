variable "resource_group_location" {
  default     = "westus3"
  description = "Location of the resource group."
}

variable "prefix" {
  type        = string
  default     = "win-vm-iis002"
  description = "Prefix of the resource name"
}

variable "kv_secret_name" {
  type = string
  default = "wins-kv-pass002"
  description = "kv secret name"
}