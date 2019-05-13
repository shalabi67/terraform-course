output "createServersNumber" {
  value = "${length(aws_instance.server)}"
}

output "serverNames" {
  value = "${aws_instance.server.*.tags.name}"
}

output "firstServerName" {
  value = "${aws_instance.server[0].tags.name}"
}