variable "organizations_organizational_unit_lookup" {
  description = <<EOT
Map of organizations_organizational_unit_lookup, attributes below
Required:
    - name
    - parent_id
EOT

  type = map(object({
    name      = string
    parent_id = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.organizations_organizational_unit_lookup : (
        can(regex("^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[0-9a-z]{8,32})$", v.parent_id))
      )
    ])
    error_message = "see https://docs.aws.amazon.com/organizations/latest/APIReference/API_CreateOrganizationalUnit.html#organizations-CreateOrganizationalUnit-request-ParentId"
  }
}

