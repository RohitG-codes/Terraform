variable "aws_access_key" {
  description = "AWS access key ID"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS secret access key"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "web_sec_grp_name" {
  description = "Name for the web security group"
  type        = string
}

variable "db_sec_grp_name" {
  description = "Name for the db security group"
  type        = string
}

variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
}
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "internet_gateway_name" {
  description = "Name for the internet-gateway"
  type        = string
}

variable "public_subnet_name" {
  description = "Name for the public subnet"
  type        = string
}

variable "private_subnet_name" {
  description = "Name for private the subnet"
  type        = string
}

variable "public_subnet_cb" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cb" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "public_rt_name" {
  description = "Name for the public route-table"
  type        = string
}

variable "private_rt_name" {
  description = "Name for the private route-table"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "web_instance_name" {
  description = "The EC2 instance name"
  type        = string
}

variable "db_instance_name" {
  description = "The EC2 instance name"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
}

variable "key_pair_name" {
  description = "The EC2 key Pair name"
  type        = string
}

variable "availability_zone" {
  description = "The availability zones to deploy resources"
  type        = string
}

variable "nat_gateway_name" {
  description = "Name for the Nat Gateway"
  type        = string
}