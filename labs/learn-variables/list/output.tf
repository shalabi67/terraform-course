output "first_number_from_a_list" {
  value = "${var.numberList[0]}"
}

output "number_list_count" {
  value = "${length(var.numberList)}"
}
