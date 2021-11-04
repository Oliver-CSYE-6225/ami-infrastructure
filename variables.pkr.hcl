variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "source_ami" {
  type = string
}

variable "ssh_username" {
  type = string
}

variable "ami_name" {
  type = string
}

variable "ami_description" {
  type = string
}

variable "ami_users" {
  type = list(number)
}