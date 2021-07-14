terraform {

  required_version = "~>1.0.1" #reflects version in .terraform-version file

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.45.0"
    }
  }
}