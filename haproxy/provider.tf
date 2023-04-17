# terraform {
#   required_providers {
#     haproxy = {
#       source  = "marcomezzaro/haproxy"
#       version = "0.0.1"
#     }
#   }
# }

# provider "haproxy" {}

# Adding terraform version and terraform provider version on Terraform block
terraform {
  required_providers {
    haproxy = {
      source  = "matthisholleville/haproxy"
      version = "0.2.2"
    }
  }
}

provider "haproxy" {
  server_addr = "localhost:5555"
  username    = "admin"
  password    = "adminpwd"
  
  # you may need to allow insecure TLS communications unless you have configured
  # certificates for your server
  insecure = true
}