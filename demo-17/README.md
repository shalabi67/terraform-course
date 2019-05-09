#EBS Elastic Beanstalk


##Steps

###create file terraform.tfvars
AWS_ACCESS_KEY = ""
AWS_SECRET_KEY = ""
AWS_REGION = "us-east-1"
RDS_PASSWORD = "123456aqs"

###generate mykey
ssh-keygen -f mykey
for simplicity, these key exists just copy them from root folder.


###run terraform
terraform init
terraform apply


###ssh to instance
get ipaddreess from terraform.tfstate file.
ssh -i mykey -l ubuntu ipaddrress

