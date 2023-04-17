# resource "haproxy_backend" "my-backend" {
#   name              = "my-backend"
#   balance_algorithm = "roundrobin"
#   mode              = "http"
# }
# resource "haproxy_frontend" "my-frontend" {
#   name            = "my-frontend"
#   mode            = "http"
#   default_backend = haproxy_backend.my-backend
# }




# # Resources

resource "haproxy_frontend" "my-frontend" {
  name = "my-frontend"

  # for more options go to https://registry.terraform.io/providers/matthisholleville/haproxy/latest/docs/resources/frontend#optional
}

resource "haproxy_maps" "my-key" {
  map   = "ratelimit"
  key   = "/metrics"
  value = "50"

  # for more options go to https://registry.terraform.io/providers/matthisholleville/haproxy/latest/docs/resources/maps#optional
}