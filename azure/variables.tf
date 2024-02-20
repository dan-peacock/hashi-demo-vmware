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
