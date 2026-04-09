# Terra-Infra-Project 🚀

Infrastructure as Code using Terraform to deploy AWS resources.

## Architecture
- **EC2** - Ubuntu web server with Nginx
- **S3** - Storage bucket
- **DynamoDB** - NoSQL database
- **VPC** - Default VPC with Security Groups
- **Key Pair** - SSH access

## Prerequisites
- Terraform installed
- AWS CLI configured
- AWS account

# Initialize
terraform init

# Plan
terraform plan

# Deploy
terraform apply

# Destroy
terraform destroy

## Modules
project/
├── ec2.tf        # EC2 instance + Security Group + Key Pair
├── s3.tf         # S3 bucket
├── dynamodb.tf   # DynamoDB table
├── variable.tf   # All variables
└── outputs.tf    # Output values
