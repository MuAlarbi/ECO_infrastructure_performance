resource "local_file" "manifests_region" {
  depends_on = [aws_instance.region_workers,aws_eip.tf-wlz-cip]
  filename = "region_data_source/config.ini"
  content = templatefile("${path.module}/region_data_source/config.tpl",
    {
      func1_host = "${aws_instance.region_workers[0].public_ip}",
      func2_host = "${aws_instance.region_workers[1].public_ip}",
      func3_host = "${aws_instance.region_workers[2].public_ip}"
      deployment_config  = "REGION_REGION_REGION",
      country_code        = "US",
      source_city          = "Virginia-US",
      telco_provider    = "N/A"
      collection_name    = "terraform_test"
    }
  )
}
resource "local_file" "manifests_wlz" {
  depends_on = [aws_instance.region_workers,aws_eip.tf-wlz-cip]
  filename = "wlz_data_source/config.ini"
  content = templatefile("${path.module}/wlz_data_source/config.tpl",
    {
      func1_host = "${aws_instance.region_workers[0].public_ip}",
      func2_host = "${aws_instance.region_workers[1].public_ip}",
      func3_host = "${aws_instance.region_workers[2].public_ip}"
      deployment_config  = "MEC_MEC_MEC",
      country_code        = "US",
      source_city          = "NYC-US",
      telco_provider    = "Verizon"
      collection_name    = "terraform_test"
    }
  )
}