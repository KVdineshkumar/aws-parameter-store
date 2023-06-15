terraform {
  backend "s3" {
    bucket = "terraform-bb73"
    key = "params/terraform.tfstate"
    region = "us-east-1"
  }
}