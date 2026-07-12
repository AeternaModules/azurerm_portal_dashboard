output "portal_dashboards_id" {
  description = "Map of id values across all portal_dashboards, keyed the same as var.portal_dashboards"
  value       = { for k, v in azurerm_portal_dashboard.portal_dashboards : k => v.id }
}
output "portal_dashboards_dashboard_properties" {
  description = "Map of dashboard_properties values across all portal_dashboards, keyed the same as var.portal_dashboards"
  value       = { for k, v in azurerm_portal_dashboard.portal_dashboards : k => v.dashboard_properties }
}
output "portal_dashboards_location" {
  description = "Map of location values across all portal_dashboards, keyed the same as var.portal_dashboards"
  value       = { for k, v in azurerm_portal_dashboard.portal_dashboards : k => v.location }
}
output "portal_dashboards_name" {
  description = "Map of name values across all portal_dashboards, keyed the same as var.portal_dashboards"
  value       = { for k, v in azurerm_portal_dashboard.portal_dashboards : k => v.name }
}
output "portal_dashboards_resource_group_name" {
  description = "Map of resource_group_name values across all portal_dashboards, keyed the same as var.portal_dashboards"
  value       = { for k, v in azurerm_portal_dashboard.portal_dashboards : k => v.resource_group_name }
}
output "portal_dashboards_tags" {
  description = "Map of tags values across all portal_dashboards, keyed the same as var.portal_dashboards"
  value       = { for k, v in azurerm_portal_dashboard.portal_dashboards : k => v.tags }
}

