data "template_file" "person" {
  template = <<END
    {
    "firstName" = "$${firstName}",
    "lastName" = "$${lastName}",
    "birthDate" = "$${birthDate}",
    "country" = "Germany"
  }
END
  vars = {
    firstName = "${var.firstName}"
    lastName = "${var.lastName}"
    birthDate = "${var.birthDate}"
  }
}