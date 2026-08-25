# Secure Automated Web Architecture

## Description
This project deploys a secure, automated AWS web server environment using Terraform. The infrastructure includes a VPC, subnet, routing, security groups, and an EC2 instance that installs and runs Apache through a user_data bootstrap script. The goal is to demonstrate real DevSecOps deployment practices using Infrastructure as Code.

---
<img width="2944" height="1498" alt="Screenshot 2026-08-24 193844" src="https://github.com/user-attachments/assets/a09c5ab9-f33c-4611-aec2-0653ba9e7f9c" />


## Technologies Used
- **AWS**
- **Terraform**
- **EC2**
- **VPC**
- **Security Groups**
- **Internet Gateway**
- **Route Tables**
- **Apache Web Server**
- **AWS Session Manager (SSM)**

---

## Architecture
This environment is designed using a secure, locked-down cloud network:

- A **VPC** (10.0.0.0/16) provides isolated networking.
- A **public subnet** (10.0.1.0/24) hosts the EC2 instance and is associated with a route table that sends `0.0.0.0/0` traffic to an Internet Gateway.
- A **route table** ensures proper routing between the subnet and the internet.
- An **Internet Gateway** enables outbound and inbound traffic for the public subnet.
- A **security group** restricts access:
  - Port **80 (HTTP)** open to the world for web traffic.
  - Port **22 (SSH)** locked to a single trusted IP.
- The EC2 instance uses **user_data** to automatically install and start Apache, generating a live web server on first boot.

This architecture ensures controlled access, automated provisioning, and a functioning web server upon deployment.

---

## Deployment & Verification
### **The Deployment**
Authenticate to AWS from your local terminal, then run:

```bash
terraform apply -auto-approve

