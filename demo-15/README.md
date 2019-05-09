#Autoscaling
this example how to scale up and scale down

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

###install stress tool
sudo apt-get update
sudo apt-get install stress

run stress for 5 min.
stress --cpu 2 --timeout 300

### service
from EC2 console
load balancer  to see number of instances

from cloud watch see alarm.