variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string

}

variable "public_subnets" {
  description = "public subnet cidr value"
  type        = list(string)

}

variable "private_subnets" {
  description = "private subnet cidr value"
  type        = list(string)

}