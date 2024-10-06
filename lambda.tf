provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "bucket-created-by-cicd-setup"

  tags = {
    Name        = "My bucket"
    Environment = "prod"
  }
}

# There is 2 option only for the domain -> system or global what is di