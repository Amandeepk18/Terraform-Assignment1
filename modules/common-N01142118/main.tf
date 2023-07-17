resource "azurerm_log_analytics_workspace" "la_workspace" {
  name                = "my-log-analytics"
  location            = var.location
  resource_group_name = var.rg-name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags                = var.assignment01_tags
}
resource "azurerm_recovery_services_vault" "recovery_vault" {
  name                = var.recovery_services_vault["vault_name"]
  location            = var.location
  resource_group_name = var.rg-name
  sku                 = var.recovery_services_vault["vault_sku"]
  soft_delete_enabled = true
}
resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.rg-name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "str_container" {
  name                  = "content"
  storage_account_name  = var.storage_account_name
  container_access_type = "private"
}
resource "azurerm_storage_blob" "str_blob" {
  name                   = "my-awesome-content.txt"
  storage_account_name   = var.storage_account_name
  storage_container_name = azurerm_storage_container.str_container.name
  type                   = "Block"
  source                 = "${path.module}/my-awesome-content.txt"
}