module "vmware" {
  source = "./vmware"
  count  = var.cloud == "yes" ? 1 : 0
}

module "azure" {
  source = "./azure"
  count  = var.cloud == "no" ? 1 : 0
}
