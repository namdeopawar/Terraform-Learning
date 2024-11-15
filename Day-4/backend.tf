terraform {
  backend "s3" {
    bucket         = "namacloudops-terra" # change this
    key            = "nama/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

