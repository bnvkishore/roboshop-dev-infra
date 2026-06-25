module "sg" {
  source = "git::https://github.com/bnvkishore/terraform-aws-sg.git?ref=main"
  project = var.project
  environment = var.environment
  vpc_id = local.vpc_id
  sg_name = "mongodb"
}