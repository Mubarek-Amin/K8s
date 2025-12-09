locals {
  name   = "eks-lab"
  domain = "labs.amin-mubarek.com"
  region = "eu-west-2"

  tags = {
    environment = "demo"
    name        = "amin"
    project     = "eks-demo-lab"

  }

}