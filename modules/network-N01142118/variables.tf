variable "rg-name" {}
variable "location" {}
variable "vnet-name" {
  default = "network-vnet"
}
variable "vnet-space" {
  default = ["10.0.0.0/16"]
}
variable "subnet-name1" {
  default = "network-subnet1"
}


variable "subnet1-address-space" {
  default = ["10.0.1.0/24"]
}

variable "security-group1" {
  default = "network-nsg1"
}


