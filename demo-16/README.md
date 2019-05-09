#ELB Load Balancer
in this demo we will create an auto scaling group which will create two ec2 instances. and we will have a load balance 
configured base auto scaling group. the load balancer will be in front of the ec2 instances and will direct port 80 
traffic to them.
security groups allows only load balancer to access ec2 instances and prevent any direct http request to ec2 instances.
another security groups allows access to load balancer through http.
in this way we make sure all the http requests will come through load balancer.

when an instance is marked as not healthy from the load balancer it will be destroyed and anopther ec2 instance will 
start using the auto scaling group.

##not working
this is not working since instance web server is not working.

##run
from out get load balancer url and paste it in your browser. 
press refresh and you will see different ip address.

