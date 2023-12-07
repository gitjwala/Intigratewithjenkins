module "myec2" {
  source        = "./modules"
   ami = var.ami  
   instance_type = var.instance_type
}


