terraform {
  backend "s3" {
    bucket  = "tfstate.rudenko"
    key     = "tfstate/terraform.tfstate"
    region  = "eu-central-1"
    profile = "default"
  }
}
