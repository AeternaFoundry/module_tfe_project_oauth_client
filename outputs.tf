output "project_oauth_clients_id" {
  description = "Map of id values across all project_oauth_clients, keyed the same as var.project_oauth_clients except keys with no id are omitted"
  value       = { for k, v in tfe_project_oauth_client.project_oauth_clients : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_oauth_clients_oauth_client_id" {
  description = "Map of oauth_client_id values across all project_oauth_clients, keyed the same as var.project_oauth_clients except keys with no oauth_client_id are omitted"
  value       = { for k, v in tfe_project_oauth_client.project_oauth_clients : k => v.oauth_client_id if v.oauth_client_id != null && length(v.oauth_client_id) > 0 }
}
output "project_oauth_clients_project_id" {
  description = "Map of project_id values across all project_oauth_clients, keyed the same as var.project_oauth_clients except keys with no project_id are omitted"
  value       = { for k, v in tfe_project_oauth_client.project_oauth_clients : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

