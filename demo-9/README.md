#EBS lunch ec2 with key pair.
this example shows how to lunch an ec2 instance using VPC and keypair and EBS storage.

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
ssh -i mykey -l ubuntu ipaddrress
sudo -s
df -h

you will see volume



