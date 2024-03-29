
data "terraform_remote_state" "eks" {
  backend = "remote"

  config = {
    organization = "nklkarthi"
    workspaces = {
      name = "mas-eks-tf"
    }
  }
}


