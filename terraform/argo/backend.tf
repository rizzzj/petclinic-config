terraform {
  backend "s3" {
    bucket         = "mybucket"
    key            = "argo/app/terraform.tfstate"
    region         = "ap-southeast-1"
    use_lockfile   = true
    encrypt        = true
  }
}