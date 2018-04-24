#####################################################################
##
##      Created 4/24/18 by ucdpadmin. for project1
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

provider "vsphere" {
  user           = "${var.user}"
  password       = "${var.password}"
  vsphere_server = "${var.vsphere_server}"

  allow_unverified_ssl = "${var.allow_unverified_ssl}"
  version = "~> 1.2"
}


data "vsphere_virtual_machine" "TomVM1_template" {
  name          = "${var.TomVM1_template_name}"
  datacenter_id = "${data.vsphere_datacenter.TomVM1_datacenter.id}"
}

data "vsphere_datacenter" "TomVM1_datacenter" {
  name = "${var.TomVM1_datacenter_name}"
}

data "vsphere_datacenter" "TomVM1_datacenter_name" {
  name = "${var.TomVM1_datacenter_name}"
}

data "vsphere_datastore" "TomVM1_datastore" {
  name          = "${var.TomVM1_datastore_name}"
  datacenter_id = "${data.vsphere_datacenter.TomVM1_datacenter.id}"
}

data "vsphere_resource_pool" "resource_pool_cluster" {
  name          = "${var.resource_pool_cluster_name}"
  datacenter_id = "${data.vsphere_datacenter.TomVM1_datacenter_name.id}"
}

resource "vsphere_virtual_machine" "TomVM1" {
  name          = "${var.TomVM1_name}"
  datastore_id  = "${data.vsphere_datastore.TomVM1_datastore.id}"
  num_cpus      = "${var.TomVM1_number_of_vcpu}"
  memory        = "${var.TomVM1_memory}"
  guest_id = "${data.vsphere_virtual_machine.TomVM1_template.guest_id}"
  resource_pool_id = "${data.vsphere_resource_pool.resource_pool_cluster.id}"
  clone {
    template_uuid = "${data.vsphere_virtual_machine.TomVM1_template.id}"
  }
  disk {
    name = "${var.TomVM1_disk_name}"
    size = "${var.TomVM1_disk_size}"
  }
}