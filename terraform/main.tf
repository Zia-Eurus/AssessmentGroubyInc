# 1 for PUBLIC & 2 for PRIVATE
module "vpc" {
  source      = "./modules/vpc"
  project_id  = var.project_id
  region      = var.region
}

module "gke" {
  source              = "./modules/gke"
  project_id          = var.project_id
  region              = var.region
  basic_auth_username = var.basic_auth_username
  basic_auth_password = var.basic_auth_password
  gke_num_nodes       = var.gke_num_nodes
  vpc_name            = module.vpc.vpc_name
  subnet_name         = module.vpc.subnet_name
  machine_type        = var.machine_type
}
