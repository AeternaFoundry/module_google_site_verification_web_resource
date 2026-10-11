output "site_verification_web_resources_id" {
  description = "Map of id values across all site_verification_web_resources, keyed the same as var.site_verification_web_resources except keys with no id are omitted"
  value       = { for k, v in google_site_verification_web_resource.site_verification_web_resources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "site_verification_web_resources_deletion_policy" {
  description = "Map of deletion_policy values across all site_verification_web_resources, keyed the same as var.site_verification_web_resources except keys with no deletion_policy are omitted"
  value       = { for k, v in google_site_verification_web_resource.site_verification_web_resources : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "site_verification_web_resources_owners" {
  description = "Map of owners values across all site_verification_web_resources, keyed the same as var.site_verification_web_resources except keys with no owners are omitted"
  value       = { for k, v in google_site_verification_web_resource.site_verification_web_resources : k => v.owners if v.owners != null && length(v.owners) > 0 }
}
output "site_verification_web_resources_site" {
  description = "Map of site values across all site_verification_web_resources, keyed the same as var.site_verification_web_resources except keys with no site are omitted"
  value       = { for k, v in google_site_verification_web_resource.site_verification_web_resources : k => one(v.site) if v.site != null && length(v.site) > 0 }
}
output "site_verification_web_resources_verification_method" {
  description = "Map of verification_method values across all site_verification_web_resources, keyed the same as var.site_verification_web_resources except keys with no verification_method are omitted"
  value       = { for k, v in google_site_verification_web_resource.site_verification_web_resources : k => v.verification_method if v.verification_method != null && length(v.verification_method) > 0 }
}
output "site_verification_web_resources_web_resource_id" {
  description = "Map of web_resource_id values across all site_verification_web_resources, keyed the same as var.site_verification_web_resources except keys with no web_resource_id are omitted"
  value       = { for k, v in google_site_verification_web_resource.site_verification_web_resources : k => v.web_resource_id if v.web_resource_id != null && length(v.web_resource_id) > 0 }
}

