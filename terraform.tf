terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }

  backend "s3" {
    bucket         = "infrasity-statedata"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "infrasity-terraform-lock"
  }
}
