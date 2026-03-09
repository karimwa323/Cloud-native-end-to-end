data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket = "karim-eks-terraform-state-prod"
    key    = "prod/network/terraform.tfstate"
    region = "eu-central-1"
  }
}

module "jenkins" {
  source = "../../modules/jenkins"

  project_name = "cloud-native-end-to-end"
  vpc_id           = data.terraform_remote_state.network.outputs.vpc_id
  subnet_id = data.terraform_remote_state.network.outputs.public_subnets[0]
  instance_type = "t3.micro"
  key_name = "frankfurt_key_pair"
}