module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["${var.AWS_REGION}a", "${var.AWS_REGION}b", "${var.AWS_REGION}c"]
  private_subnets = ["${var.subnetBeginMask}.1.0/24", "${var.subnetBeginMask}.2.0/24", "${var.subnetBeginMask}.3.0/24"]
  public_subnets  = ["${var.subnetBeginMask}.101.0/24", "${var.subnetBeginMask}.102.0/24", "${var.subnetBeginMask}.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}