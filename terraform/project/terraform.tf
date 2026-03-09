terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"         
    }
  }

  backend "s3" {
    bucket         = "dev-infra-app-bucket-abhishek-dev-2026"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dev-infra_project"
    encrypt        = true
  }
}
