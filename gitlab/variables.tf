variable "project" {
  type        = map(any)
  description = "gitlab project configuration"
  default = {
    "name"                   = "example"
    "description"            = "My awesome codebase"
    "initialize_with_readme" = true
    "visibility_level"       = "public"
  }
}

variable "repository_file_details" {
  type = object({
    file_path           = string
    branch              = string
    content             = string
    author_email        = string
    author_name         = string
    commit_message      = string
    overwrite_on_create = bool
  })
  default = {
    author_email        = "mhr.as1317@gmail.com"
    author_name         = "Mehran"
    branch              = "main"
    commit_message      = "file mewo added"
    content             = "mewo mewo"
    file_path           = "meow.txt"
    overwrite_on_create = true
  }
}

variable "branch_name" {
  type    = string
  default = "test"
}

variable "ref" {
  type        = string
  default     = "main"
  description = "refrence of created branches"
}

variable "tag_name" {
  type        = string
  default     = "test-for-terraform"
  description = "terraform tag name"
}