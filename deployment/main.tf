terraform {
  backend "s3" {
    bucket = "thuwiko-sandbox-terraform-state"
    key    = "kobe-thuwis/terraform.tfstate"
    region = "eu-west-1"
  }
}

locals {
  full_name           = "kobe-thuwis"
  region              = "eu-west-1"
  ec2_key_pair_name   = "thuwiko-sandbox-key-pair"
  acm_certificate_arn = "arn:aws:acm:eu-west-1:343316312182:certificate/044ede79-be3c-4633-b400-d000012ce97f"
  private_subnet_ids  = ["subnet-05b63d38fd78871d0", "subnet-0f66735efcee6e39b"]
  public_subnet_ids   = ["subnet-0372e9ae36105a607", "subnet-09aae4fb5f8c58dfb"]
  vpc_id              = "vpc-023270c4553129c97"
  logs_bucket_id      = "thuwiko-sandbox-logs"
  cidr_blocks         = ["10.0.1.0/24", "10.0.2.0/24", "10.0.8.0/24", "10.0.9.0/24"]
}

module "dockerized-web-app" {
  source              = "../modules/dockerized-web-app"
  region              = local.region
  ec2_key_name        = local.ec2_key_pair_name
  ssl_certificate_arn = local.acm_certificate_arn
  app_subnet_ids      = local.private_subnet_ids
  lb_subnet_ids       = local.public_subnet_ids
  vpc_id              = local.vpc_id
  logs_bucket_id      = local.logs_bucket_id
  cidr_blocks         = local.cidr_blocks
  container_ports     = [5000]
  ecr_repository_name = "pxl-workshop-computer-vision-web-app"
  full_name           = "${local.full_name}-web-app"
  docker_image_tag    = local.full_name
}
