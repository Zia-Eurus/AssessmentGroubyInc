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
  basic_auth_username = "testuser123"
  basic_auth_password = "testpassword@123"
  gke_num_nodes = 3
  vpc_name      = module.vpc.vpc_name
  subnet_name   = module.vpc.subnet_name
  min_node_count = 1
  max_node_count = 10
  machine_type = "e2-medium"
  cluster_autoscaling = {
    enabled       = true
    max_cpu_cores = 1
    min_cpu_cores = 2
    max_memory_gb = 1
    min_memory_gb = 2
    gpu_resources = [
      {
        resource_type = "cpu", 
        minimum = 2, 
        maximum = 2
      },{
        resource_type = "memory", 
        minimum = 2, 
        maximum = 2
      }
    ]
  }
}
