output "portal_dashboards_id" {
  description = "Map of id values across all portal_dashboards, keyed the same as var.portal_dashboards"
  value       = { for k, v in azurerm_portal_dashboard.portal_dashboards : k => v.id if v.id != null && length(v.id) > 0 }
}
output "portal_dashboards_dashboard_properties" {
  description = "Map of dashboard_properties values across all portal_dashboards, keyed the same as var.portal_dashboards"
  value       = { for k, v in azurerm_portal_dashboard.portal_dashboards : k => v.dashboard_properties if v.dashboard_properties != null && length(v.dashboard_properties) > 0 }
}
output "portal_dashboards_location" {
  description = "Map of location values across all portal_dashboards, keyed the same as var.portal_dashboards"
  value       = { for k, v in azurerm_portal_dashboard.portal_dashboards : k => v.location if v.location != null && length(v.location) > 0 }
}
output "portal_dashboards_name" {
  description = "Map of name values across all portal_dashboards, keyed the same as var.portal_dashboards"
  value       = { for k, v in azurerm_portal_dashboard.portal_dashboards : k => v.name if v.name != null && length(v.name) > 0 }
}
output "portal_dashboards_resource_group_name" {
  description = "Map of resource_group_name values across all portal_dashboards, keyed the same as var.portal_dashboards"
  value       = { for k, v in azurerm_portal_dashboard.portal_dashboards : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "portal_dashboards_tags" {
  description = "Map of tags values across all portal_dashboards, keyed the same as var.portal_dashboards"
  value       = { for k, v in azurerm_portal_dashboard.portal_dashboards : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

