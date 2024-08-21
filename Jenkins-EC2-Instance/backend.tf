terraform {
  backend "s3" {
    bucket = "jenkins-teraform-eks-cluster"
    region = "ap-south-1"
    key    = "jenkins/terraform.tfstate"
  }
}
