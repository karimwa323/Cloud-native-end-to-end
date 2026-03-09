variable "project_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "instance_type" {
  type = string
  default = "t3.large"
}

variable "subnet_id" {
  type = string
}

variable "key_name" {
  type = string
}