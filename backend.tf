terraform {
  backend "azurerm" {
    resource_group_name  = "tfstaten01142118RG"
    storage_account_name = "tfstaten01142118sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}