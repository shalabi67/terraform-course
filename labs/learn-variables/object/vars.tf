#this will run for version 0.12 or heigher
variable "person" {
  type = object({firstName=string, lastName=string, gender=bool})
  default = {
    firstName = "Mohammad"
    lastName  = "Shalabi"
    gender    = true
  }
}

