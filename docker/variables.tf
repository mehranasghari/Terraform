variable "image_name" {
  default     = "nginx:latest"
  type        = string
  description = "docker image and its version"
}

variable "container_name" {
  default     = "nginx"
  type        = string
  description = "name of container"
}

variable "hostname" {
  default     = "nginx"
  type        = string
  description = "hostname of the container"
}

variable "domain_name" {
  default     = "nimcafe.ir"
  type        = string
  description = "domain name of the container"
}

variable "restart" {
  default     = "unless-stopped"
  type        = string
  description = "restart policy for container"
}

variable "internal_port" {
  default     = 80
  type        = number
  description = "internal port for nginx"
}

variable "external_port" {
  default     = 8080
  type        = number
  description = "external port for nginx"
}

variable "volume_container_path" {
  default     = "/usr/share/nginx/html"
  type        = string
  description = "container path for nginx voulme"
}

variable "volume_host_path" {
  default     = "/home/asghari/terraform/Terraform/docker/nginx-data"
  type        = string
  description = "host path for nginx volume"
}

variable "volume_read_only" {
  default     = true
  type        = bool
  description = "the volume read-only value"
}

variable "container_network" {
  type = object({
    name   = string
    driver = string
  })
  default = {
    driver = "bridge"
    name   = "nginx_network"
  }
}