variable "allocated_storage" {}
variable "instance_class" {}
variable "username" {}
variable "password" {}
variable "db_name" {}

variable "sg_ids" {
  type = list(string)
}

variable "subnet_group" {}