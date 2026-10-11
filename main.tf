data "oci_jms_fleet_blocklists" "jms_fleet_blocklists_lookup" {
  for_each = var.jms_fleet_blocklists_lookup

  fleet_id            = each.value.fleet_id
  managed_instance_id = each.value.managed_instance_id
  operation           = each.value.operation

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

