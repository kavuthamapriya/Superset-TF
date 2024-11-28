module "ecs" {
  source            = "./modules/ecs"
  ecs_cluster_name  = var.ecs_cluster_name
  subnet_id         = var.subnet_id
  task_arn          = var.task_arn
  vpc_id            = var.vpc_id      
}

module "service" {
  source     = "./modules/service"
  cluster_id = module.ecs.cluster_id
  subnet_id  = var.subnet_id  
  task_arn   = module.ecs.superset_task_arn
  vpc_id     = var.vpc_id      
  app_name   = var.app_name      
  env_name   = var.env_name       
}

variable "ecs_cluster_name" {
  description = "The ECS Cluster Name"
  type        = string
}

variable "task_arn" {
  description = "The ARN of the ECS task"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "app_name" {
  description = "The application name"
  type        = string
}

variable "env_name" {
  description = "The environment name (e.g., prod, dev)"
  type        = string
}

output "vpc_id" {
  value = var.vpc_id
}

output "subnet_id" {
  value = var.subnet_id  
}

output "load_balancer_dns" {
  value = module.service.load_balancer_dns
}
