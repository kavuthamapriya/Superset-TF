variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID"
  type        = string
}
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16" 
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the Subnet"
  type        = string
  default     = "10.0.1.0/24" 
}
