# 🌐 TKH Final Capstone — Cloud & DevSecOps Labs

This repository contains my work for Labs 34, 35, and 36 in the TKH Final Capstone. Each lab builds on the last, moving from cloud infrastructure → automation → documentation. Together, they form a complete beginner DevSecOps workflow.

---

## 🚀 Lab 34 — Automated Web Server Deployment (Terraform)
In Lab 34, I deployed a fully automated AWS environment using Terraform:
- VPC, subnet, route table, and internet gateway  
- Secure security group configuration  
- EC2 instance with Apache installed via `user_data`  

The goal was to launch a live web server and verify it through the instance’s public IP or via AWS Session Manager.

---

## 🔧 Lab 35 — CI/CD + Security Scanning (GitHub Actions)
Lab 35 introduced automation and security:
- GitHub Actions workflow for Terraform validation  
- Integrated **tfsec** to scan for IaC vulnerabilities  
- Ensured every push triggered automated checks  

This lab added continuous integration and DevSecOps practices to the project.

---

## 📁 Lab 36 — Documentation & Repo Organization
Lab 36 focused on professional documentation and structure:
- Created a dedicated `Lab36` folder  
- Wrote a clean README explaining the architecture  
- Updated `.gitignore` and organized the repo for submission  

This lab wrapped everything together into a polished, portfolio-ready project.

---

## 🛠️ Technologies Used
- AWS (EC2, VPC, IAM, SSM)  
- Terraform  
- GitHub Actions  
- tfsec  
- Linux / Ubuntu  
- Git & GitHub  

---

## 👩🏽‍💻 Author
**Jasmine Adams**  
TKH Final Capstone — Cloud & DevSecOps Track
