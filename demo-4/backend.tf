terraform {
  backend "s3" {
    bucket = "shalabi-sam"
    key = "demo-4/state"
    region = "us-east-1"
  }
}