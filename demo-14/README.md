#IAM role
This demo will create an s3 bucket and an ec2 instance and a role for the ec2 instance to access bucket.

##Steps

###create file terraform.tfvars
AWS_ACCESS_KEY = ""
AWS_SECRET_KEY = ""
AWS_REGION = "us-east-1"

###generate mykey
ssh-keygen -f mykey
for simplicity, these key exists just copy them from root folder.


###run terraform
terraform init
terraform apply


###ssh to instance
get ipaddreess from terraform.tfstate file.
ssh -i mykey -l ubuntu ipaddrress


###install pip
sudo apt-get update
sudo apt-get install -y python-pip python-dev


###install aws
pip install awscli

###connect to bucket
echo test>test.txt
aws s3 cp test.txt s3://shalabi-mybucket-c29df1/test.txt
