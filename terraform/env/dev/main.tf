module "dev" {
  source         = "../../infra"
  iamRole        = "dev"
  environment    = "dev"
  container_name = "homologacao"
  image_name     = var.image_name
}

output "dns_alb" {
  value = module.dev.dns
}
