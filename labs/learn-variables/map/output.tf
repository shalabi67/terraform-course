output "define after creation" {
  value = "${var.nameToAmi["redhat"]}"
}

output "get from defult" {
  value = "${var.regionToAmi["us-east-1"]}"
}

/*
this will case an error
output "get non exiting" {
  value = "${var.regionToAmi["us-east-11"]}"
}
*/