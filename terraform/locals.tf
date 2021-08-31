locals {
  Rowner = "zia"
}

locals {
  common_labels = {
    Name = local.Rowner
  }
}

locals {
  autoscaling_resource_limits = var.cluster_autoscaling.enabled ? concat([{
    resource_type = "cpu"
    minimum       = var.cluster_autoscaling.min_cpu_cores
    maximum       = var.cluster_autoscaling.max_cpu_cores
    }, {
    resource_type = "memory"
    minimum       = var.cluster_autoscaling.min_memory_gb
    maximum       = var.cluster_autoscaling.max_memory_gb
  }], var.cluster_autoscaling.gpu_resources) : []
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
    enabled       = true
    max_cpu_cores = 2
    min_cpu_cores = 1
    max_memory_gb = 2
    min_memory_gb = 1
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
  description = "Cluster autoscaling configuration. See [more details](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#clusterautoscaling)"
}