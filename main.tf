module "myec2" {
  source        = "./modules"
   ami = var.iam  
   instance_type = var.instance_type
}


