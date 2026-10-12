resource "tfe_project_oauth_client" "project_oauth_clients" {
  for_each = var.project_oauth_clients

  oauth_client_id = each.value.oauth_client_id
  project_id      = each.value.project_id
}

