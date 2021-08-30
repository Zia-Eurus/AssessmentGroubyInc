variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}

variable "vpc_name" {
    type = string
    description = "(optional) describe your variable"
}

variable "subnet_name" {
    type = string
    description = "(optional) describe your variable"
}

variable "min_node_count" {
    default = 1
    description = "(optional) describe your variable"
}

variable "max_node_count" {
    default = 10
    description = "(optional) describe your variable"
}

variable "autoscaling_enable" {
    default = true
    description = "(optional) describe your variable"
}

variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

