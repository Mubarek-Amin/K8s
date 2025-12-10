module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.0"

  name = local.name

  kubernetes_version           = "1.34"
  endpoint_public_access       = true
  endpoint_public_access_cidrs = ["0.0.0.0/0"]

  enable_irsa = true

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.public_subnets

  eks_managed_node_groups = {
    example = {

      instance_types = ["t3.large"]

      min_size     = 2
      max_size     = 5
      desired_size = 2
    }

  }

  tags = local.tags


}