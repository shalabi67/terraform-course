#EBS: lunch ec2 with key pair and attach EBS volume.
this example shows how to lunch an ec2 instance using VPC and keypair and attache EBS storage.

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

you will see volume

###make file system from device
mkfs.ext4 /dev/xvdh
mkdir /data
mount /dev/xvdh /data


###persist file system
nano /etc/fstab
/dev/xvdh               /data    ext4   defaults                0 0

now you can use mount data
umount /data
mount /data

now when we reboot our data ill be persisted.




