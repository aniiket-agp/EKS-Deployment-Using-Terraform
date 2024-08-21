terraform {
  backend "s3" {
    bucket = "jenkins-teraform-eks-cluster"
    region = "ap-south-1"
    key    = "eks/terraform.tfstate"
  }
}
