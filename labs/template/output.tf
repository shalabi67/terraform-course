output "person" {
  value = "${data.template_file.person.rendered}"
}

output "personFromFile" {
  value = "${data.template_file.personFromFile.rendered}"
}