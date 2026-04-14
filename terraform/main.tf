provider "aws" {
  region = "us-west-2"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "vault-cluster"
  cluster_version = "1.29"

  vpc_id     = "your-vpc-id"
  subnet_ids = ["subnet-1", "subnet-2"]

  eks_managed_node_groups = {
    default = {
      desired_size = 2
      max_size     = 3
      min_size     = 2
      instance_types = ["t3.large"]
    }
  }
}
