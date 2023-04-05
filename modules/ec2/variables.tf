variable "ami_id" {
  default     = "ami-02f3f602d23f1659d"
  type        = string
  description = "this is amd id for machine"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {}
variable "env_name" { default = ["build", "dev", "stage", "prod"] }
#variable "instance_name" {}
