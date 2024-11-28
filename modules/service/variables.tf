variable "cluster_id" {
  description = "The ECS Cluster ID"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
}

variable "task_arn" {
  description = "The ARN of the ECS task"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}
variable "app_name" {
  description = "Application Name"
  type        = string
}

variable "env_name" {
  description = "Environment Name"
  type        = string
}