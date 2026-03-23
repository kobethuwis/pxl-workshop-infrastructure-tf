variable "full_name" {
  description = "Full name of the resources"
}

variable "region" {
  description = "AWS region"
}

variable "ec2_key_name" {
  description = "Name of the key pair to use for connection with the EC2 instances"
}

variable "vpc_id" {
  description = "ID of the VPC"
}

variable "app_subnet_ids" {
  description = "IDs of the subnets for the EC2 instances"
}

variable "lb_subnet_ids" {
  description = "IDs of the subnets for the load balancer"
}

variable "container_ports" {
  description = "List of container ports to expose"
}

variable "ssl_certificate_arn" {
  description = "ARN of the ACM SSL certificate for the load balancer"
}

variable "cidr_blocks" {
  description = "CIDR blocks which should have access to the load balancer and application"
}

variable "logs_bucket_id" {
  description = "ID of the bucket for load balancer logs"
}

variable "ecr_repository_name" {
  description = "Name of the ECR repository"
}

variable "docker_image_tag" {
  description = "Tag of the Docker image"
}

variable "health_check_command" {
  description = "Command to use for health checks"
  default     = "python3 -c 'import sys, requests; sys.exit(0 if requests.get(\"http://localhost:5000/health\").ok else 1)'"
}