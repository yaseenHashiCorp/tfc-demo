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


module "ApprovedInstance" {
  source  = "app.terraform.io/yaseen-tfcorg/ApprovedInstance/aws"
  version = "1.0.5"
  region = var.region
  instance_type = var.instance_type
}
  
  
  
  
  
  
  
  
  

  
  
  
 
