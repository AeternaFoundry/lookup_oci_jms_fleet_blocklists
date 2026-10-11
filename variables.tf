variable "jms_fleet_blocklists_lookup" {
  description = <<EOT
Map of jms_fleet_blocklists_lookup, attributes below
Required:
    - fleet_id
Optional:
    - managed_instance_id
    - operation
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    fleet_id            = string
    managed_instance_id = optional(string)
    operation           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

