output "cloud_floating_ips_lookup_floating_ips" {
  description = "Map of floating_ips values across all cloud_floating_ips_lookup, keyed the same as var.cloud_floating_ips_lookup except keys with no floating_ips are omitted"
  value       = { for k, v in data.ovh_cloud_floating_ips.cloud_floating_ips_lookup : k => v.floating_ips if v.floating_ips != null && length(v.floating_ips) > 0 }
}
output "cloud_floating_ips_lookup_service_name" {
  description = "Map of service_name values across all cloud_floating_ips_lookup, keyed the same as var.cloud_floating_ips_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_floating_ips.cloud_floating_ips_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

