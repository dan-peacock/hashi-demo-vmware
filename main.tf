provider "vsphere" { 
  user                 = var.username
  password             = var.password
  vsphere_server       = var.ip
  allow_unverified_ssl = true
}
}

module "module_a" {
  source = "./module_a"
  count  = var.cloud == "no" ? 1 : 0
}

module "module_b" {
  source = "./module_b"
  count  = var.cloud == "yes" ? 1 : 0
}


data "vsphere_datacenter" "datacenter" {
  name = "dc1"
}

data "vsphere_resource_pool" "pool" {
  name          = "192.168.0.60/Resources"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_datastore" "datastore" {
  name          = "datastore1"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = "VM Network"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "vsphere_virtual_machine" "vm" {
  name             = "test-TF"
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus         = 1
  guest_id         = "other3xLinux64Guest"
  wait_for_guest_net_timeout = 0
  # wait_for_guest_net_routable = false
  memory           = 1024
  network_interface {
    network_id = data.vsphere_network.network.id
  }
    disk {
    label = "test"
    size  = "1024"
  }
}
