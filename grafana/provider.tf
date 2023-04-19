terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "1.37.2"
    }
  }
}

provider "grafana" {
  url                  = "http://localhost:3000"
  auth                 = "admin:admin"
  insecure_skip_verify = true
}