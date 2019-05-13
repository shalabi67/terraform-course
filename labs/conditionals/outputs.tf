output "param1Output" {
  value = "${var.param1 == "param1" ? var.result : var.error}"
}

output "param2Output" {
  value = "${var.param2 == 10 ? var.result : var.error}"
}

output "param3" {
  value = "${var.param3 ? var.result : var.error}"
}

output "param4" {
  value = "${!var.param4 ? var.result : var.error}"
}