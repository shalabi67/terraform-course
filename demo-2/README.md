#Demo2: upload file to ec2 instance
This demo shows how you can use ssh key, upload files and run scripts.

##create file terraform.tfvars
AWS_ACCESS_KEY = ""
AWS_SECRET_KEY = ""
AWS_REGION = "us-east-1"

##to generate ssh key use
ssh-keygen -f mykey

##update security group to open all ports which can be used only by your id.
to do that use VPC to identify default security group and add a new rule.



