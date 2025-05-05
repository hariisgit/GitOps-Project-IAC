# 
terraform {
  #Ref - https://registry.terraform.io/providers/hashicorp/aws/latest/docs
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  #Ref - https://developer.hashicorp.com/terraform/language/backend/s3
  backend "s3" {
    # Value cannot be referenced from variables.
    bucket = "gitops-tf-state-bcuket"
    region = "us-east-1"
  }
}