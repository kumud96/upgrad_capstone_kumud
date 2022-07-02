module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.78.0"
  name            = "my-project-vpc"
  cidr            = "10.0.0.0/16"
  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
  enable_nat_gateway = true
  single_nat_gateway = true
  create_igw = true
  public_subnet_tags = {
    Type = "public-subnets"
  }
  private_subnet_tags = {
    Type = "private-subnets"
  }
  tags = {
    Owner       = "kumud"
    Environment = "project"
  }
  vpc_tags = {
    Name = "my-project-vpc"
  }
}
