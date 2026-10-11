data "ovh_cloud_floating_ips" "cloud_floating_ips_lookup" {
  for_each = var.cloud_floating_ips_lookup

  service_name = each.value.service_name
}

