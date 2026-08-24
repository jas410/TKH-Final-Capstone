# TKH Final Capstone – Terraform Web Stack

## Overview
This project contains the Terraform configuration for deploying a basic AWS web stack as part of the TKH Final Capstone. The goal is to demonstrate Infrastructure-as-Code (IaC) by building cloud resources programmatically instead of manually provisioning them.

## Architecture
The Terraform configuration creates:

- **VPC** (10.0.0.0/16)
- **Public Subnet** (10.0.1.0/24)
- **Internet Gateway**
- **Route Table** with a default route to the IGW
- **Security Group**
  - HTTP (80) open to the world
  - SSH (22) restricted to my home IP
- **EC2 Instance** (t2.micro, Amazon Linux 2023)
  - Installs and starts Apache (`httpd`) using `user_data`

## Files Included
- `main.tf` – Full Terraform architecture
- `variables.tf` – AWS region and home IP variables

## Commands Used
Before submitting, the configuration was validated using:

```bash
terraform init
terraform validate
```

## Notes
- No manual AWS provisioning was performed.
- No `terraform apply` was executed, per assignment instructions.
- Only Terraform code is included in this repository.

