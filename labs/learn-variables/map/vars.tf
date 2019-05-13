variable "regionToAmi" {
  type = "map"
  description = "map aws region to an ami"
  default = {
    "us-east-1" = "us-east-1 ami"
    "us-east-2" = "us-east-2"
    # "us-east-3" = "${var.defaultAmi}" are not allowed in defaults
  }
}

variable "defaultAmi" {
  type = "string"
  description = "this is a default ami for all regions"
  default = "default ami"
}

variable "nameToAmi" {
  type = "map"
  description = "an example shows how a name can be converted to ami"
}

