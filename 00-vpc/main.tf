module "vpc" {
  source = "git::https://github.com/bnvkishore/terraform-aws-vpc.git?ref=main"
  project= ""
  environment= ""
  is_peering_required = false
}