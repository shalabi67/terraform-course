#RDS


##Steps

###create file terraform.tfvars
AWS_ACCESS_KEY = ""
AWS_SECRET_KEY = ""
AWS_REGION = "us-east-1"
RDS_PASSWORD = ""

###generate mykey
ssh-keygen -f mykey
for simplicity, these key exists just copy them from root folder.


###run terraform
terraform init
terraform apply -var RDS_PASSWORD=123456abc


###ssh to instance
get ipaddreess from terraform.tfstate file.
ssh -i mykey -l ubuntu ipaddrress

sudo apt-get update
sudo apt-get install mysql-client

###connect to mysql
mysql -u root -h host name from output -p'123456abc'

mysql -u root -h mariadb.cblszdba1dtk.us-east-1.rds.amazonaws.com -p'123456abc'

show databases

