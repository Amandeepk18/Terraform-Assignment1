variable "rg_name" {}
variable "location" {}
variable "storage_account_name" {}
variable "windows_vm_name" {}
variable "windows_avs" {
  type    = string
  default = "windows_avs_set"
}

variable "subnet_id" {
  type = string
}

variable "windows_OS_disk" {
  type        = map(string)
  description = "Attributes for Window machine OS disk"
  default = {
    storage_account_type = "StandardSSD_LRS"
    Disk_size            = "128"
    caching              = "ReadWrite"
  }
}
variable "windows_OS" {
  type        = map(string)
  description = "Windows OS information"
  default = {
    Publisher = "MicrosoftWindowsServer"
    Offer     = "WindowsServer"
    Sku       = "2016-Datacenter"
    Version   = "latest"
  }
}

variable "assignment01_tags" {
  type    = map(string)
}
variable "windows_username" {
  type        = string
  description = "The admin username for linux virtual machine"
  default     = "Amandeep-N01142118"
}
variable "windows_password" {
  type        = string
  description = "The password for windows virtual machine"
  default     = "WindowsP@ssw0rd"
}
