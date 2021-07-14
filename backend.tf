terraform {
  backend "s3" {
    bucket  = "tfm-state-086282490297"
    region  = "eu-west-1"
    encrypt = "true"
    ###########################################################################################
    ### IMPORTANT - BACKEND KEY PROVIDED BY --backend-file=env_specific.backend.tfvars FILE ###
    ###########################################################################################
  }
}


