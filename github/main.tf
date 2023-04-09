resource "github_repository" "example" {
  name        = var.repository_details.name
  description = var.repository_details.description

  visibility       = var.repository_details.visibility
  has_issues       = var.repository_details.has_issues
  auto_init        = var.repository_details.auto_init
  license_template = var.repository_details.license_template
}

resource "github_repository_file" "test_file" {
  repository          = github_repository.example.name
  branch              = var.repository_file_details.branch
  file                = var.repository_file_details.file
  content             = var.repository_file_details.content
  commit_message      = var.repository_file_details.commit_message
  commit_author       = var.repository_file_details.commit_author
  commit_email        = var.repository_file_details.commit_email
  overwrite_on_create = var.repository_file_details.overwrite_on_create
}

resource "github_branch" "name" {
  repository    = github_repository.example.name
  branch        = var.github_branch_name
  source_branch = var.github_branch_source_branch
}