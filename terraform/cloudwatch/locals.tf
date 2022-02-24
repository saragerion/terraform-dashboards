locals {
  aws_account_id = data.aws_caller_identity.current.account_id
  service_name   = "petshop"
  environment    = "dev"

}