variable "access_key" {}
variable "secret_key" {}
variable "region" {}
variable "instance_type" {}
variable "Name" {}
variable "count" {}
variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type = "list"
  default = ["us-east-1"]
}