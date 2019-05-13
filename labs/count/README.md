#Count
count is used to identify number of resources to create.


##Steps

###create file terraform.tfvars
AWS_ACCESS_KEY = ""
AWS_SECRET_KEY = ""
AWS_REGION = "us-east-1"
stage = "dev"  #0 instances will be created
stage = "test"  #1 instance will be created
stage = "prod"  #2 instances will be created