locals {
  Rowner = "zia"
}

locals {
  # Common tags to be assigned to all resources
  common_labels = {
    Name = local.Rowner
  }
}