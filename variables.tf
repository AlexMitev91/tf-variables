variable "cidr_block_allow" {
  description = "Allows connection to everyone"
  default     = "0.0.0.0/0"
}

variable "var-ports-tcp" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 80, 443, 8080]
}

variable "instance_type" {
  description = "Default instance type for EC2"
  default     = "t2.micro"
}

variable "instance_tags" {
  description = "Name of the EC2 instance"
  default     = "var-instance"
}