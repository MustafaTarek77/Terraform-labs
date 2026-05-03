terraform {
  backend "s3" {
    bucket         = "terraform-lab2-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}