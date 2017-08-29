provider "aws" {
  region = "${var.region}"
}

module "network" {
  source = "modules/network"
  environment = "${var.environment}"
  vpc_cidr = "${var.vpc_cidr}"
  private_subnet_cidrs = "${var.private_subnet_cidrs}"
  public_subnet_cidrs = "${var.public_subnet_cidrs}"
  availibility_zones = "${var.availibility_zones}"
}
variable "region" {}
variable "vpc_cidr" {}
variable "environment" {}
variable "private_subnet_cidrs" {
  type = "list"
}

variable "public_subnet_cidrs" {
  type = "list"
}

variable "availibility_zones" {
  type = "list"
}