resource "docker_image" "nginx" {
  name = var.image_name
}

resource "docker_container" "nginx" {
  name       = var.container_name
  image      = docker_image.nginx.image_id
  hostname   = var.hostname
  domainname = var.domain_name
  restart    = var.restart
  ports {
    internal = var.internal_port
    external = var.external_port
  }
  volumes {
    container_path = var.volume_container_path
    host_path      = var.volume_host_path
    read_only      = var.volume_read_only
  }
}

resource "docker_network" "private_network" {
  name   = var.container_network.name
  driver = var.container_network.driver
}


output "output_p" {
  value = "every thing is ok!"
}