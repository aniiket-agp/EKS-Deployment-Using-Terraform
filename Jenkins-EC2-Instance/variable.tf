variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string

}

variable "public_subnets" {
  description = "public subnet cidr value"
  type        = list(string)

}
variable "instance_type" {
  type        = string
  description = "instance type"

}