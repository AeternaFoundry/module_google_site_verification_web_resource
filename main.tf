resource "google_site_verification_web_resource" "site_verification_web_resources" {
  for_each = var.site_verification_web_resources

  verification_method = each.value.verification_method
  deletion_policy     = each.value.deletion_policy

  site {
    identifier = each.value.site.identifier
    type       = each.value.site.type
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

