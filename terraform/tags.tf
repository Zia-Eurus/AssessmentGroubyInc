locals {
  Rowner = "zia"
}

locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Name = local.Rowner
  }
}