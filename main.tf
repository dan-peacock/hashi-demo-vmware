module "vmware" {
  source = "./vmware"
  count  = var.cloud == "No" ? 1 : 0
  VMname  = var.VMname
}

module "azure" {
  source = "./azure"
  count  = var.cloud == "Yes" ? 1 : 0
}
