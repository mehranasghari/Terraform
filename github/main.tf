resource "github_repository" "example" {
  name        = "terraform-generated"
  description = "This is just a test repository"

    visibility = "public"
    auto_init = true
    license_template = apache-2.0.txt
    

}