# dev infrastructure
module "dev_infra" {
    source = "./project"
    environment = "dev"
    bucket_name = "infra-app-bucket-abhishek-2026"
    instance_count = 1
    instance_type = "t3.micro"
    ami_id = "ami-0b6c6ebed2801a5cb"
    hash_key = "studentId"
    dynamodb_name = "infra_project"
    ec2_root_storage_size = 10
    instance_name = "abhi_terraform_project"

  
} 

module "prd_infra" {
    source = "./project"
    environment = "prd"
    bucket_name = "infra-app-bucket-abhishek-2026"
    instance_count = 2
    instance_type = "t3.micro"
    ami_id = "ami-0b6c6ebed2801a5cb"
    hash_key = "studentId"
    dynamodb_name = "infra_project"
    ec2_root_storage_size = 10
    instance_name = "abhi_terraform_project"

  
}

module "stg_infra" {
    source = "./project"
    environment = "stg"
    bucket_name = "infra-app-bucket-abhishek-2026"
    instance_count = 1
    instance_type = "t3.micro"
    ami_id = "ami-0b6c6ebed2801a5cb"
    hash_key = "studentId"
    dynamodb_name = "infra_project"
    ec2_root_storage_size = 10
    instance_name = "abhi_terraform_project"

  
}