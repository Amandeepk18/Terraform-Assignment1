variable "rg-name" {}
variable "location" {}
variable "storage_account_name" {
  description = "Name of the storage account."
  type        = string
  default     = "strn01142118ac"
}
variable "recovery_services_vault" {
  type = map(string)
  default = {
    vault_name = "myrecovery-vault"
    vault_sku  = "Standard"
  }
}

variable "assignment01_tags" {
  type    = map(string)
}

variable "subnet_id" {}

