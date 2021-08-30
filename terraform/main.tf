# 1 for PUBLIC & 2 for PRIVATE
module "vpc" {
  source      = "./modules/vpc"
  project_id  = var.project_id
  region      = var.region
}

module "gke" {
  source      = "./modules/gke"
  project_id  = var.project_id
  region      = var.region
  gke_username = "testuser123"
  gke_password = "testpassword@123"
  gke_num_nodes = 3
  vpc_name      = module.vpc.vpc_name
  subnet_name   = module.vpc.subnet_name
  min_node_count = 1
  max_node_count = 10
  autoscaling_enable = true
}
