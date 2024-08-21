# EKS Deployment Using Terraform

This repository contains Terraform configurations to deploy an Amazon Elastic Kubernetes Service (EKS) cluster. The configurations enable the setup of a scalable and secure EKS cluster using Terraform, a popular Infrastructure as Code (IaC) tool.

## Introduction

Amazon EKS is a managed Kubernetes service that simplifies running Kubernetes clusters on AWS. Terraform helps to define and provision infrastructure using a high-level configuration language. This project provides Terraform scripts to automate the deployment of an EKS cluster along with associated resources such as VPCs, subnets, and security groups.

## Prerequisites

Before you begin, ensure you have the following:

- **Terraform**: Install Terraform from [terraform.io](https://www.terraform.io/downloads.html).
- **AWS CLI**: Install the AWS CLI from [aws.amazon.com/cli](https://aws.amazon.com/cli/).
- **AWS Credentials**: Configure your AWS credentials using the AWS CLI or environment variables.
- **kubectl**: Install `kubectl` for interacting with your Kubernetes cluster. [kubectl installation guide](https://kubernetes.io/docs/tasks/tools/install-kubectl/).

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/EKS-Deployment-Using-Terraform.git
   cd EKS-Deployment-Using-Terraform
   ```

2. **Configure Terraform**:
   Make sure you have the appropriate Terraform provider configurations and AWS credentials set up. 

3. **Initialize Terraform**:
   Initialize your Terraform working directory to download the necessary providers and modules:
   ```bash
   terraform init
   ```

4. **Plan the Deployment**:
   Review the planned changes that Terraform will make:
   ```bash
   terraform plan
   ```

5. **Apply the Configuration**:
   Apply the Terraform configuration to create the EKS cluster:
   ```bash
   terraform apply
   ```
   Confirm the action when prompted.

6. **Update `kubeconfig`**:
   Update your `kubeconfig` to use the newly created EKS cluster:
   ```bash
   aws eks --region <region> update-kubeconfig --name <cluster-name>
   ```
   Replace `<region>` and `<cluster-name>` with your respective AWS region and EKS cluster name.

## Usage

After deployment, you can interact with your EKS cluster using `kubectl`. For example:

- **Check the cluster nodes**:
  ```bash
  kubectl get nodes
  ```

- **Deploy applications**:
  Use Kubernetes manifests or Helm charts to deploy your applications.

## Configuration

The Terraform configurations are modular and customizable. Key configuration files include:

- `main.tf`: Main configuration file defining the EKS cluster and VPC resources.
- `variables.tf`: File to define input variables for the Terraform configurations.
- `outputs.tf`: Outputs from the Terraform configuration, such as cluster endpoint and kubeconfig.

You can adjust the settings in `variables.tf` to fit your needs, such as specifying the desired instance types or cluster version.

## Troubleshooting

- **Terraform Initialization Issues**:
  Ensure you have a stable internet connection and the required permissions to download Terraform providers.

- **EKS Cluster Access**:
  Ensure your AWS IAM user has the necessary permissions to create and manage EKS clusters.

- **Kubernetes Access Issues**:
  Ensure that your `kubeconfig` is properly configured and points to the correct cluster.
