variable cloud {
  description = "If Yes will deploy to Azure, if No will deploy to VMWare"
  type        = string
  default     = "No"
}

variable username {
  description = "vSphere administrator username"
  type        = string
  default     = "administrator@vsphere.local"
}
variable password {
  description = "vSphere administrator password"
  type        = string
}
variable ip {
  description = "IP or FQDN of vSphere server"
  type        = string
}
