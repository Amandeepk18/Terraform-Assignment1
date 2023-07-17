variable "linux_avs" {
  default = "linux_avs"
}
variable "nb_count" {}
variable "linux_vm_name" {}
#variable "linux-vm-ids" {}
variable "vm-size" {
  default = "standard_B1s"
}
variable "admin-username" {
  default = "Amandeep-N01142118"
}
variable "private_key" {
  default = "~/.ssh/id_rsa"
}
variable "public_key" {
  default = "~/.ssh/id_rsa.pub"
}
variable "os-disk-attr" {
  type = map(string)
  default = {
    storage-account-type = "Premium_LRS"
    disk-size            = "32"
    disk-caching         = "ReadWrite"
  }
}
variable "source_image_info" {
  type = map(string)
  default = {
    os-publisher = "OpenLogic"
    os-offer     = "CentOS"
    os-sku       = "8_2"
    os-version   = "latest"
  }
}

variable "subnet_id" {
  type = string
}
variable "rg_name" {}
variable "location" {}

variable "assignment01_tags" {
  type    = map(string)
}
variable "storage_account_name" {}
variable "storage_account_key" {}
variable "storage_act" {}

