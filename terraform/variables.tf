variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

variable "basic_auth_username" {
  type        = string
  description = "gke username"
}

variable "basic_auth_password" {
  type        = string
  description = "gke password"
}

variable "gke_num_nodes" {
  type = number
  default     = 2
  description = "number of gke nodes"
}

variable "machine_type" {
  type = string
  description = "(optional) describe your variable"
  default = "e2-medium"
}

variable "cluster_autoscaling" {
  type = object({
    enabled       = bool
    min_cpu_cores = number
    max_cpu_cores = number
    min_memory_gb = number
    max_memory_gb = number
    gpu_resources = list(object({ resource_type = string, minimum = number, maximum = number }))
  })
  default = {
    enabled       = false
    max_cpu_cores = 0
    min_cpu_cores = 0
    max_memory_gb = 0
    min_memory_gb = 0
    gpu_resources = []
  }
  description = "Cluster autoscaling configuration. See [more details](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#clusterautoscaling)"
}