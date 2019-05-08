#Terraform state using s3
This demo shows how to use S3 as a backend to store terraform state.

##Steps
###create an S3 bucket and enable versions on it.
###create file terraform.tfvars
AWS_ACCESS_KEY = ""
AWS_SECRET_KEY = ""
AWS_REGION = "us-east-1"
###make sure your AWs credentials are configured and the region is configured also
use:  aws configure
###create file backend.tf
terraform {
  backend "s3" {
    bucket = "shalabi-sam"
    key = "demo-4/state"
    region = "us-east-1"
  }
}
### run terraform init
