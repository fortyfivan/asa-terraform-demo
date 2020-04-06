variable "secret_key" {
}

variable "access_key" {
}

variable "region" {
  description = "Region to deploy the VPC"
  default     = "us-west-1"
}

variable "availability_zone" {
  description = "Availability Zone to deploy the VPC"
  default     = "us-west-1b"
}

variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.1.0.0/16"
}
variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default     = "10.1.0.0/24"
}

variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default     = "ami-06397100adf427136"
}

variable "instance_type" {
  description = "type for aws EC2 instance"
  default     = "t2.micro"
}

variable "environment_tag" {
  description = "AWS tag to attach to resources"
  default = "ASATerraformDemo"
}

variable "oktaasa_team" {
}

variable "oktaasa_key" {
}

variable "oktaasa_secret" {
}

variable "oktaasa_project" {
  description = "Name of the ASA Project to create"
  default     = "asa-terraform-demo"
}

variable "oktaasa_group" {
  description = "Name of the ASA Group to create and assign"
  default     = "ops-team"
}

variable "sftd_version" {
  type    = string
  default = "1.40.1"
}

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

provider "oktaasa" {
  oktaasa_team   = var.oktaasa_team
  oktaasa_key    = var.oktaasa_key
  oktaasa_secret = var.oktaasa_secret
}