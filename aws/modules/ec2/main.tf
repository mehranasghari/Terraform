resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  count         = 0


  tags = {
    Name       = "mehran-ec2-${var.env_name[count.index]}"
    Created_By = local.created_by
  }
}
