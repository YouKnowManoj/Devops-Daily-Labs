variable "bucket_name" {
    description = "The name of the S3 bucket to create"
    type        = string
    default     = "my-first-bucket-from-terraform-9021540000"
}

variable "region" {
    description = "The AWS region to create resources in"
    type        = string
    default     = "eu-north-1"
}