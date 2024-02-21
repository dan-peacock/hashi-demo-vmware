provider vsphere {
  user                 = var.username
  password             = var.password
  vsphere_server       = var.ip
  allow_unverified_ssl = true
}

provider "azurerm" {
  features {}
  subscription_id   = var.subscription_ID
  tenant_id         = var.tenant_ID
}
