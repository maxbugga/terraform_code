locals {
  az_count    = length(data.aws_availability_zones.available.names)
  account_id  = data.aws_caller_identity.current.account_id
  ws = terraform.workspace
}

