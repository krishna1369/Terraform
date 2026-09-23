module "ec2" {
  source = "../../modules/ec2"

  ami_id           = var.ami_id
  instance_type    = var.instance_type
  subnet_id        = var.subnet_id
  security_group_ids = var.security_group_ids

  key_name                    = var.key_name
  associate_public_ip         = false
  iam_instance_profile        = var.iam_instance_profile

  root_volume_size = 30
  root_volume_type = "gp3"

  instance_name = "dev-app-server"

  tags = {
    Environment = "dev"
    Project     = "my-application"
    ManagedBy   = "Terraform"
    Owner       = "DevOps"
  }
}
