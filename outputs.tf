output "portal_dashboards" {
  description = "All portal_dashboard resources"
  value       = azurerm_portal_dashboard.portal_dashboards
}
output "portal_dashboards_dashboard_properties" {
  description = "List of dashboard_properties values across all portal_dashboards"
  value       = [for k, v in azurerm_portal_dashboard.portal_dashboards : v.dashboard_properties]
}
output "portal_dashboards_location" {
  description = "List of location values across all portal_dashboards"
  value       = [for k, v in azurerm_portal_dashboard.portal_dashboards : v.location]
}
output "portal_dashboards_name" {
  description = "List of name values across all portal_dashboards"
  value       = [for k, v in azurerm_portal_dashboard.portal_dashboards : v.name]
}
output "portal_dashboards_resource_group_name" {
  description = "List of resource_group_name values across all portal_dashboards"
  value       = [for k, v in azurerm_portal_dashboard.portal_dashboards : v.resource_group_name]
}
output "portal_dashboards_tags" {
  description = "List of tags values across all portal_dashboards"
  value       = [for k, v in azurerm_portal_dashboard.portal_dashboards : v.tags]
}

