
terraform {

  backend "s3" {
    bucket = "terraform-tutorial-mehran"
    key    = "build/airflow/terraform.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {

}