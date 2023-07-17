variable "disk_count" {
  description = "Number of data disks to create"
  type        = number
  default     = 4
}

variable "disk_size_gb" {
  description = "Size of each data disk in GB"
  type        = number
  default     = 10
}

variable "linux-vm-ids" {
  description = "List of Linux VM resource IDs to attach the data disks"
  type = list(string)
}

variable "windows_vm_id" {
  description = "Windows VM resource ID to attach the data disks"
  type        = string
  default     = ""
}
variable "assignment01_tags" {
  type    = map(string)
}
variable "location" {}
variable "rg_name" {}
