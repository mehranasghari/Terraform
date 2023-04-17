resource "gitlab_project" "example" {
  name                   = var.project.name
  description            = var.project.description
  initialize_with_readme = var.project.initialize_with_readme
  visibility_level       = var.project.visibility_level
}

resource "gitlab_repository_file" "exam_file" {
  project             = gitlab_project.example.id
  file_path           = var.repository_file_details.file_path
  branch              = var.repository_file_details.branch
  content             = var.repository_file_details.content
  author_email        = var.repository_file_details.author_email
  author_name         = var.repository_file_details.author_name
  commit_message      = var.repository_file_details.commit_message
  overwrite_on_create = var.repository_file_details.overwrite_on_create
}

resource "gitlab_branch" "test" {
  project = gitlab_project.example.id
  ref     = var.ref
  name    = var.branch_name
}

resource "gitlab_project_tag" "tag" {
  project = gitlab_project.example.id
  ref     = var.ref
  name    = var.tag_name
}