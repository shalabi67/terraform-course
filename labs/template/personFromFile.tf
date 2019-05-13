data "template_file" "personFromFile" {
  template = "${file("${path.module}/personTemplate.tpl")}"
  vars = {
    firstName = "${var.firstName}"
    lastName = "${var.lastName}"
    birthDate = "${var.birthDate}"
  }
}