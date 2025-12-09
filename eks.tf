module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "21.10.1"

  cluster_name = locals.name
  cluster_version = "1.23"
  cluster_endpoint_public_access = true
  cluster_endpoint_public_access_cidrs = true

}