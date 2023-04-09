variable "repository_details" {
  type = object({
    name             = string
    description      = string
    visibility       = string
    has_issues       = bool
    auto_init        = bool
    license_template = string
  })
  default = {
    auto_init        = true
    description      = "This is just a test repository."
    has_issues       = true
    license_template = "mit"
    name             = "terraform-generated"
    visibility       = "public"
  }
}

variable "repository_file_details" {
  type = object({
    branch              = string
    file                = string
    content             = string
    commit_message      = string
    commit_author       = string
    commit_email        = string
    overwrite_on_create = bool
  })
  default = {
    branch              = "main"
    commit_author       = "mehran"
    commit_email        = "mhr.as1317@gmail.com"
    commit_message      = "created by terraform"
    content             = "**/*.tfstate"
    file                = ".gitignore"
    overwrite_on_create = true
  }
}

variable "github_branch_name" {
  default     = "development"
  type        = string
  description = "value of the branch name"
}

variable "github_branch_source_branch" {
  default     = "main"
  type        = string
  description = "value of the source branch"
}

