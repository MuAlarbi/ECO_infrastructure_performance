output "region_fqdn_1" {
  value = "${aws_instance.region_workers[0].public_ip}:8001"
}
output "region_fqdn_2" {
  value = "${aws_instance.region_workers[1].public_ip}:8002"
}
output "region_fqdn_3" {
  value = "${aws_instance.region_workers[2].public_ip}:8003"
}

output "wlz_fqdn_1" {
  value = "${aws_eip.tf-wlz-cip[0].carrier_ip}:8001"
}
output "wlz_fqdn_2" {
  value = "${aws_eip.tf-wlz-cip[1].carrier_ip}:8002"
}
output "wlz_fqdn_3" {
  value = "${aws_eip.tf-wlz-cip[2].carrier_ip}:8003"
}

