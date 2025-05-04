# Ref - https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "gitops-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east1a", "us-east1b", "us-east1c"]
  private_subnets = ["10.14.1.0/24", "10.14.2.0/24", "10.14.3.0/24"]
  public_subnets  = ["10.14.11.0/24", "10.14.12.0/24", "10.14.13.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "staging"
  }
}