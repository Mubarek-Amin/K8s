terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.21.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "3.1.1"
    }

  }
  backend "s3" {
    bucket  = "k8-lab-tfstate"
    key     = "k8-lab"
    encrypt = true
  }
}

provider "aws" {
  region = "eu-west-2"
}