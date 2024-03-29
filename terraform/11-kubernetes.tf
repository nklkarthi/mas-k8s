
data "terraform_remote_state" "eks" {
  backend = "remote"

  config = {
    organization = "nklkarthi"
    workspaces = {
      name = "mas-eks-tf"
    }
  }
}

data "aws_eks_cluster" "demo" {
  name = data.terraform_remote_state.eks.outputs.cluster_name
}

