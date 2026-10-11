data "aws_organizations_organizational_unit" "organizations_organizational_unit_lookup" {
  for_each = var.organizations_organizational_unit_lookup

  name      = each.value.name
  parent_id = each.value.parent_id
}

