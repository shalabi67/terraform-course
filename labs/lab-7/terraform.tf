#name is a must terraform.tf
terraform {
  backend "s3" {
    bucket = "shlabai-state"
    key = "lab-7/terraform.tfstate"
    region = "us-east-1"
    profile = "default"   #profile defined in .aws
  }
}