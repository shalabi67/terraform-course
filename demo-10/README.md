#User data: lunch ec2 with key pair and attach EBS volume.
this is the same as demo-9 except no manual steps to mount volume and persist data.

##Steps

###create file terraform.tfvars
AWS_ACCESS_KEY = ""
AWS_SECRET_KEY = ""
AWS_REGION = "us-east-1"

###generate mykey
ssh-keygen -f mykey


###run terraform
terraform init
terraform apply


###ssh to instance
get ipaddreess from terraform.tfstate file.
ssh -i mykey -l ubuntu ipaddrress
sudo -s
df -h
