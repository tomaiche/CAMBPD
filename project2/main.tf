#####################################################################
##
##      attempt at creating IBM Cloud Block Storage for project2
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

provider "ibm" {

  version = "~> 0.7"
}


resource "ibm_storage_block" "Tom_block_storage" {
  type = "Performance"
  datacenter = "${var.datacenter}"
  capacity = "20"
  iops = "100"
  os_format_type = "Linux"
}