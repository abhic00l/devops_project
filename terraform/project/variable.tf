variable "environment" {
    description = "This is the environment for my infra"
    type = string    
}

variable "bucket_name" {
    description = "This is my bucket name for infra"
    type = string
  
}

variable "hash_key" {
    description = "This is my dynamodb haskey"
    type = string
  
}

variable "dynamodb_name" {
    description = "This is my dynamodb bucket name"
    type = string
  
}

variable "instance_type" {
    description = "This is my instance type for infra"
    type = string
  
}

variable "ami_id" {

    description = "This is my amiid for my infra"
    type = string
  
}

variable "ec2_root_storage_size" {
  
    description = "This is my root_storage_size for my infra"
    type = string
}

variable "instance_count" {
    description = "This is my instance count for my infra"
    type = number
}

variable "instance_name" {
  description = "This is my instance name for my infra"
    type = string
}