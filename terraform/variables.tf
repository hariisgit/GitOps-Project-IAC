variable "region" {
  type = string
  default = "us-east1"
  description = "Region of AWS"
}

variable "tf-state-bucket" {
  type = string
  default = "tf-state-s3-gitops"
  description = "Name of S3 Bucket containing Terraform state file"
}