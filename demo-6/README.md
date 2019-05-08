#Modules 
this example shows how to use an external module "consul".
the external module is defined in gethub: github.com/wardviaene/terraform-consul-module.git


##Steps
###generate mykey
ssh-keygen -f mykey

###create file terraform.tfvars
AWS_ACCESS_KEY = ""
AWS_SECRET_KEY = ""
AWS_REGION = "us-east-1"

###run terraform get