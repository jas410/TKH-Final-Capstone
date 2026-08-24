# TKH Final Capstone – DevSecOps Terraform Lab

## Overview
This project implements Terraform infrastructure and a GitHub Actions workflow designed to run a security scan (SAST) on pull requests. The goal was to follow DevSecOps practices by storing IaC in GitHub, using branches, opening a PR, and triggering an automated tfsec scan.

## Lab Agenda
- Build Terraform resources inside the `Lab34` directory  
- Push the project to GitHub  
- Create a feature branch (`test-branch`)  
- Open a Pull Request into `main`  
- Add a GitHub Actions workflow to run tfsec on PR updates  
- Review the pipeline results and document the outcome  

## What Was Done
- Terraform code was created and committed to the repository.  
- A PR was opened to merge `test-branch` into `main`.  
- A workflow file (`security-scan.yml`) was added to trigger tfsec during PR activity.  
- The workflow successfully triggered each time changes were pushed.

## Result
The tfsec scan did not complete successfully.  
The GitHub Action failed with: Error: accepts between 0 and 1 arg(s), received 2


The tfsec action automatically adds its own arguments, and combined with the workflow inputs, tfsec received conflicting parameters. Because the scan never executed, the workflow did not turn green and the PR remained in a failed state.

Despite this, the repository contains:
- Terraform code  
- A working PR  
- The workflow file  
- Multiple pipeline runs showing the attempted DevSecOps integration  

This fulfills the lab requirement of demonstrating CI/CD integration with IaC, even though the tfsec scan did not fully succeed.



