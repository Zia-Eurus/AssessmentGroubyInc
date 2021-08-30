
output "subnet_name" {
    value = google_compute_subnetwork.subnet.name
}
output "vpc_name" {
    value = google_compute_network.vpc.name
}