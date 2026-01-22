resource "aws_s3_bucket" "mybucket"{
  bucket = "s3statebackend100524"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
  }
}
terraform {
  backend "s3" {
    bucket         = "s3statebackend100524"
    key            = "argo/app/terraform.tfstate"
    region         = "ap-southeast-1"
    use_lockfile   = true
    encrypt        = true
  }
}