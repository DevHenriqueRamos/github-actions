module "dev" {
  source         = "../../infra"
  iamRole        = "dev"
  environment    = "dev"
  container_name = "homologacao"
}

output "dns_alb" {
  value = module.dev.dns
}
