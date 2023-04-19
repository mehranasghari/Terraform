resource "grafana_user" "staff" {
  email    = var.grafana_user_details.email
  password = var.grafana_user_details.password
  name     = var.grafana_user_details.name
  login    = var.grafana_user_details.login
  is_admin = var.grafana_user_details.is_admin
}

resource "grafana_team" "test-team" {
  name  = var.grafana_team_details.name
  email = var.grafana_team_details.email
  members = [
    grafana_user.staff.email
  ]
}

resource "grafana_organization" "test-org" {
  name         = var.grafana_organization_details.name
  admin_user   = grafana_user.staff.email
  create_users = true
  admins       = var.grafana_organization_details.admins
  editors      = var.grafana_organization_details.editors
  viewers      = var.grafana_organization_details.viewers
}

resource "grafana_folder" "test-folder" {
  title = var.grafana_folder_details.title
  uid   = var.grafana_folder_details.uid
}

resource "grafana_dashboard" "test-dashboard" {
  folder      = grafana_folder.test-folder.id
  config_json = var.grafana_dashboard_details_config_json
}

resource "grafana_folder_permission" "folder-permission" {
  folder_uid = grafana_folder.test-folder.uid
  permissions {
    role       = var.grafana_folder_permission_role_details.role
    permission = var.grafana_folder_permission_role_details.permission
  }
  permissions {
    team_id    = grafana_team.test-team.team_id
    permission = var.grafana_folder_permission_team_permission
  }
  permissions {
    user_id    = grafana_user.staff.user_id
    permission = var.grafana_folder_permission_user_permission
  }
}