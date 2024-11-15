provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source              = "./modules/ec2_instance"
  ami_value           = "ami-0866a3c8686eaeeba" # replace this
  instance_type_value = "t2.micro"
  subnet_id_value     = "subnet-025f8d09570dd9d39" # replace this
}