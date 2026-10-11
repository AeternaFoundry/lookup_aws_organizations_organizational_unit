output "organizations_organizational_unit_lookup_id" {
  description = "Map of id values across all organizations_organizational_unit_lookup, keyed the same as var.organizations_organizational_unit_lookup"
  value       = { for k, v in data.aws_organizations_organizational_unit.organizations_organizational_unit_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_organizational_unit_lookup_arn" {
  description = "Map of arn values across all organizations_organizational_unit_lookup, keyed the same as var.organizations_organizational_unit_lookup"
  value       = { for k, v in data.aws_organizations_organizational_unit.organizations_organizational_unit_lookup : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "organizations_organizational_unit_lookup_name" {
  description = "Map of name values across all organizations_organizational_unit_lookup, keyed the same as var.organizations_organizational_unit_lookup"
  value       = { for k, v in data.aws_organizations_organizational_unit.organizations_organizational_unit_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "organizations_organizational_unit_lookup_parent_id" {
  description = "Map of parent_id values across all organizations_organizational_unit_lookup, keyed the same as var.organizations_organizational_unit_lookup"
  value       = { for k, v in data.aws_organizations_organizational_unit.organizations_organizational_unit_lookup : k => v.parent_id if v.parent_id != null && length(v.parent_id) > 0 }
}

