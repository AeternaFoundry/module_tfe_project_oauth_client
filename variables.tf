variable "project_oauth_clients" {
  description = <<EOT
Map of project_oauth_clients, attributes below
Required:
    - oauth_client_id
    - project_id
EOT

  type = map(object({
    oauth_client_id = string
    project_id      = string
  }))
}

