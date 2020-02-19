terraform {
  backend "s3" {
    bucket = "tf-state-sandbox-nerdery"
    key = "terraform-test/state"
    #Note: The backend region cannot be specified via a variable, for whatever reason.
    region = "us-east-1"
  }
}

provider "aws" {
  version = "~> 2.0"
  region = var.region
}
