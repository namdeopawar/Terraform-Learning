provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terra-state" {
  instance_type = "t2.micro"
  ami           = "ami-0866a3c8686eaeeba"    # change this
  subnet_id     = "subnet-025f8d09570dd9d39" # change this
}

/*resource "aws_s3_bucket" "s3_bucket" {
  bucket = "namacloudops-terra" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}*/