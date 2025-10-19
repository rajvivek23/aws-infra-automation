# aws-infra-automation

Automated AWS infrastructure deployment using Terraform. This repo provisions:
- VPC with public and private subnets
- Internet Gateway + public route table
- Security Group (SSH, HTTP)
- EC2 instance (Amazon Linux 2) with nginx
- Remote state in S3 (configured in provider.tf backend)

## Prerequisites
- AWS account with proper IAM permissions (create VPC, EC2, S3, DynamoDB)
- AWS CLI configured (`aws configure`) or environment variables for AWS credentials
- Terraform >= 1.5.0
- An existing EC2 key pair in the target region (you will provide `ssh_key_name`)
- An S3 bucket for state and a DynamoDB table for locks (or create them via Terraform / AWS CLI)

## Quick setup

1. Copy example tfvars:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   # Edit terraform.tfvars and set state_bucket, ssh_key_name, etc.

