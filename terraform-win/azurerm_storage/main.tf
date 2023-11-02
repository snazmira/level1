# Create storage account for boot diagnostics
resource "azurerm_storage_account" "my_storage_account" {
  name                     = "diag${random_id.random_id.hex}"
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_key_vault" "kv" {
  name = "${random_pet.prefix.id}-kv"
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  tenant_id = "d84694ff-8b04-4a3c-a6c9-8789bfa51ed8"
  sku_name = "standard"

  access_policy {
    tenant_id = "d84694ff-8b04-4a3c-a6c9-8789bfa51ed8"
    object_id = "985cb20f-e6b6-499c-91c6-f63215664c89"
    secret_permissions = [
      "Set",
      "Get",
      "Delete",
      "Purge",
      "Recover",
      "List"
    ]
  }
}

resource "azurerm_key_vault_secret" "kv-vm-secret" {
  key_vault_id = azurerm_key_vault.kv.id
  name = var.kv_secret_name
  value = random_password.password.result
  
}


# Generate random text for a unique storage account name
resource "random_id" "random_id" {
  keepers = {
    # Generate a new ID only when a new resource group is defined
    resource_group = azurerm_resource_group.rg.name
  }

  byte_length = 8
}

resource "random_password" "password" {
  length      = 20
  special     = true
}

resource "random_pet" "prefix" {
  prefix = var.prefix
  length = 1
}