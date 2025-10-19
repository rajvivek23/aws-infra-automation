variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name (dev/stage/prod)"
  type        = string
  default     = "dev"
}

variable "state_bucket" {
  description = "S3 bucket to store Terraform state"
  type        = string
}

variable "lock_table" {
  description = "DynamoDB table name for state locking"
  type        = string
  default     = "terraform-lock"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ssh_key_name" {
  description = "Existing EC2 key pair name in AWS"
  type        = string
}

variable "ami_owner" {
  description = "AMI owner filter (amazon for Amazon Linux 2)"
  type        = string
  default     = "amazon"
}

variable "tags" {
  description = "Map of tags to apply"
  type        = map(string)
  default = {
    Project = "terraform-aws-infra-automation"
  }
}

