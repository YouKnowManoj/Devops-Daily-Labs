provider "aws" {
    region = "eu-north-1"
}

resource "aws_s3_bucket" "my_bucket" {
    bucket = "my-first-bucket-from-terraform-9021543870"
    # acl    = "private"
}