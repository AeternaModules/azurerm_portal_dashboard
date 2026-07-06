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
  # --- Unconfirmed validation candidates, derived from azurerm_portal_dashboard's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) <= 160
  #   message:   [from validate.DashboardName: invalid when len(value) > 160]
  #   source:    [from validate.DashboardName: invalid when len(value) > 160]
  # path: name
  #   source:    [from validate.DashboardName] !matched
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
  # path: dashboard_properties
  #   condition: length(value) != 0
  #   message:   [from validate.DashboardProperties: invalid when len(value) == 0]
  #   source:    [from validate.DashboardProperties: invalid when len(value) == 0]
  # path: dashboard_properties
  #   source:    [from validate.DashboardProperties] err != nil
  # path: dashboard_properties
  #   source:    [from validate.DashboardProperties] dashboardProperties.Lenses == nil
}

