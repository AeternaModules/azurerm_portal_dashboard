variable "portal_dashboards" {
  description = <<EOT
Map of portal_dashboards, attributes below
Required:
    - dashboard_properties
    - location
    - name
    - resource_group_name
Optional:
    - tags
EOT

  type = map(object({
    dashboard_properties = string
    location             = string
    name                 = string
    resource_group_name  = string
    tags                 = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.portal_dashboards : (
        length(v.name) <= 160
      )
    ])
    error_message = "[from validate.DashboardName: invalid when len(value) > 160]"
  }
  validation {
    condition = alltrue([
      for k, v in var.portal_dashboards : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.portal_dashboards : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.portal_dashboards : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.portal_dashboards : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  validation {
    condition = alltrue([
      for k, v in var.portal_dashboards : (
        length(v.dashboard_properties) != 0
      )
    ])
    error_message = "[from validate.DashboardProperties: invalid when len(value) == 0]"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

