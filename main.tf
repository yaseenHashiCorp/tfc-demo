terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

    cloud {
    organization = "yaseen-tfcorg"
    workspaces {
      tags = [ "tfcdemo" ]
    }
  }
  }


module "aws-child" {
source = "app.terraform.io/yaseen-tfcorg/child/aws"
version = "1.0.1"
region = var.region
}

