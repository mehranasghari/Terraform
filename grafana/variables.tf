variable "grafana_user_details" {
  description = "values for user details"
  type = object({
    email    = string
    password = string
    name     = string
    login    = string
    is_admin = bool
  })
  default = {
    email    = "mhr.as1317@gmail.com"
    password = "password"
    name     = "MEHRAN"
    login    = "mehran"
    is_admin = true
  }
}

variable "grafana_team_details" {
  description = "values for team details"
  type = object({
    name  = string
    email = string
  })
  default = {
    email = "teamemail@example.com"
    name  = "Test team"
  }
}

variable "grafana_organization_details" {
  description = "values for organization details"
  type = object({
    name         = string
    create_users = bool
    admins       = list(string)
    editors      = list(string)
    viewers      = list(string)
  })
  default = {
    admins       = ["admin@example.com"]
    create_users = true
    editors      = ["editor@example.com"]
    name         = "Test-org"
    viewers      = ["viewer@example.com"]
  }
}

variable "grafana_folder_details" {
  description = "values for folder details"
  type = object({
    title = string
    uid   = string
  })
  default = {
    title = "test-folder"
    uid   = "folder-uid"
  }
}

variable "grafana_dashboard_details_config_json" {
  description = "value of config.json file for a dashboard"
  type        = string
  default     = <<EOD
{
  "title": "Test Dashboard",
  "uid": "test-dashboard",
  "panels": [
    {
      "type": "graph",
      "title": "Test Panel",
      "targets": [
        {
          "refId": "A",
          "expr": "randomWalk(\"random\")"
        }
      ],
      "xaxis": {
        "mode": "time",
        "show": true
      },
      "yaxes": [
        {
          "format": "short",
          "show": true
        },
        {
          "format": "short",
          "show": true
        }
      ]
    }
  ]
}
EOD
}

variable "grafana_folder_permission_role_details" {
  description = "permission for role"
  type = object({
    role       = string
    permission = string
  })
  default = {
    permission = "Edit"
    role       = "Editor"
  }
}

variable "grafana_folder_permission_team_permission" {
  description = "permission of folder for team that we created"
  type        = string
  default     = "View"
}

variable "grafana_folder_permission_user_permission" {
  description = "permission of folder for user that we created"
  type        = string
  default     = "Admin"
}