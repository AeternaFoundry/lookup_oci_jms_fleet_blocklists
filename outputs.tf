output "jms_fleet_blocklists_lookup_id" {
  description = "Map of id values across all jms_fleet_blocklists_lookup, keyed the same as var.jms_fleet_blocklists_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_jms_fleet_blocklists.jms_fleet_blocklists_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "jms_fleet_blocklists_lookup_filter" {
  description = "Map of filter values across all jms_fleet_blocklists_lookup, keyed the same as var.jms_fleet_blocklists_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_jms_fleet_blocklists.jms_fleet_blocklists_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "jms_fleet_blocklists_lookup_fleet_id" {
  description = "Map of fleet_id values across all jms_fleet_blocklists_lookup, keyed the same as var.jms_fleet_blocklists_lookup except keys with no fleet_id are omitted"
  value       = { for k, v in data.oci_jms_fleet_blocklists.jms_fleet_blocklists_lookup : k => v.fleet_id if v.fleet_id != null && length(v.fleet_id) > 0 }
}
output "jms_fleet_blocklists_lookup_items" {
  description = "Map of items values across all jms_fleet_blocklists_lookup, keyed the same as var.jms_fleet_blocklists_lookup except keys with no items are omitted"
  value       = { for k, v in data.oci_jms_fleet_blocklists.jms_fleet_blocklists_lookup : k => v.items if v.items != null && length(v.items) > 0 }
}
output "jms_fleet_blocklists_lookup_managed_instance_id" {
  description = "Map of managed_instance_id values across all jms_fleet_blocklists_lookup, keyed the same as var.jms_fleet_blocklists_lookup except keys with no managed_instance_id are omitted"
  value       = { for k, v in data.oci_jms_fleet_blocklists.jms_fleet_blocklists_lookup : k => v.managed_instance_id if v.managed_instance_id != null && length(v.managed_instance_id) > 0 }
}
output "jms_fleet_blocklists_lookup_operation" {
  description = "Map of operation values across all jms_fleet_blocklists_lookup, keyed the same as var.jms_fleet_blocklists_lookup except keys with no operation are omitted"
  value       = { for k, v in data.oci_jms_fleet_blocklists.jms_fleet_blocklists_lookup : k => v.operation if v.operation != null && length(v.operation) > 0 }
}

