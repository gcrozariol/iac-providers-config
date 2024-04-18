terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.45.0"
    }
  }

  backend "s3" {
    bucket    = "app-state-bucket-tf"
    region  = "us-east-2"
    key     = "terraform.tfstate"
    encrypt = true

    profile = "gcrozariol"
  }
}

provider "aws" {
  profile = "gcrozariol"
}

resource "aws_s3_bucket" "terrform_state" {
  bucket = var.state_bucket

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terrform_state" {
  bucket = aws_s3_bucket.terrform_state.bucket

  versioning_configuration {
    status = "Enabled"
  }

  depends_on = [
    aws_s3_bucket.terrform_state
  ]
}