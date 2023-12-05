module "myec2" {
  source        = "./modules"
 instance_type = var.instance_type
tags = {
        Name = "my-first-ec2"
    }
}
