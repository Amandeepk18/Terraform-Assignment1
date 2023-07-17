variable "rg_name" {

}
variable "location" {

}
variable "db_username" {
  description = "Username for the database"
  type        = string
  default     = "psqluser"
}

variable "db_pass" {
  description = "Password for the database"
  type        = string
  default     = "P@w0rd118"
}

variable "db_name" {
  description = "Name of the database"
  type        = string
  default     = "n01142118-db"
}

variable "server_name" {
  description = "Name of the database server"
  type        = string
  default     = "db-n01142118"
}
variable "db_version" {
  default = "9.5"
}

variable "assignment01_tags" {
  type    = map(string)
}

