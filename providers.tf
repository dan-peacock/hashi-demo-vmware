provider vsphere {
  user                 = var.username
  password             = var.password
  vsphere_server       = var.ip
  allow_unverified_ssl = true
}
