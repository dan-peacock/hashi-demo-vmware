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

variable VMname {}

variable "prefix" {
  default = "dan-peacock"
}

variable "vm_size" {
    description = "Value of the vm_size for the azure VM"
    type = string
    default = "Standard_DS1_v2"
}

variable "default_password" {
    description = "inital password for VM"
    type = string
    default = "Password1234!"
}

variable "tags" {
  description = "Additional resource tags"
  type        = string
}

variable "subscription_ID" {
    description = "SP AppID"
    type = string
}

variable "tenant_ID" {
    description = "SP AppID"
    type = string
}
