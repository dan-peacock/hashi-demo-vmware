module "vmware" {
  source = "./vmware"
  count  = var.cloud == "Yes" ? 1 : 0
}

module "azure" {
  source = "./azure"
  count  = var.cloud == "No" ? 1 : 0
}
