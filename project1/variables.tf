#####################################################################
##
##      Created 4/24/18 by ucdpadmin. for project1
##
#####################################################################

variable "user" {
  type = "string"
  description = "Generated"
}

variable "password" {
  type = "string"
  description = "Generated"
}

variable "vsphere_server" {
  type = "string"
  description = "Generated"
}

variable "allow_unverified_ssl" {
  type = "string"
  description = "Generated"
}

variable "TomVM1_name" {
  type = "string"
  description = "Virtual machine name for TomVM1"
}

variable "TomVM1_number_of_vcpu" {
  type = "string"
  description = "Number of virtual cpu's."
}

variable "TomVM1_memory" {
  type = "string"
  description = "Memory allocation."
}

variable "TomVM1_disk_name" {
  type = "string"
  description = "The name of the disk. Forces a new disk if changed. This should only be a longer path if attaching an external disk."
}

variable "TomVM1_disk_size" {
  type = "string"
  description = "The size of the disk, in GiB."
}

variable "TomVM1_template_name" {
  type = "string"
  description = "Generated"
}

variable "TomVM1_datacenter_name" {
  type = "string"
  description = "Generated"
}

variable "TomVM1_datastore_name" {
  type = "string"
  description = "Generated"
}

variable "resource_pool_cluster_name" {
  type = "string"
  description = "Cluster name"
}

