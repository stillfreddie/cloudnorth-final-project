# Terraform Cloud Setup





This document explains how to configure Terraform Cloud as the remote backend for the CloudNorth infrastructure project, enabling secure state management and team collaboration.



\## Prerequisites



\- A Terraform Cloud account and organization: \*\*cloudnorth-tf-org\*\*  

\- Access permissions to create and manage workspaces  

\- AWS credentials with required permissions configured securely



\## Steps to Configure Terraform Cloud Remote Backend



1\. \*\*Create Terraform Cloud Organization\*\*  

&nbsp;  - Log in to Terraform Cloud (https://app.terraform.io/)  

&nbsp;  - Create or confirm your organization named \*\*cloudnorth-tf-org\*\*



2\. \*\*Create Workspace\*\*  

&nbsp;  - Inside the organization, create a new workspace named \*\*cloudnorth-final-project\*\*  

&nbsp;  - Choose the \*\*“CLI-driven workflow”\*\* option for manual Terraform runs



3\. \*\*Configure AWS Credentials\*\*  

&nbsp;  - Store your AWS Access Key ID and Secret Access Key as environment variables in the workspace settings:  

&nbsp;    - `AWS\_ACCESS\_KEY\_ID`  

&nbsp;    - `AWS\_SECRET\_ACCESS\_KEY` (marked sensitive)  



4\. \*\*Set Remote Backend in Terraform Config\*\*  

&nbsp;  - Your Terraform configuration (e.g., `main.tf`) includes the remote backend block:



&nbsp;  ```hcl

&nbsp;  terraform {

&nbsp;    backend "remote" {

&nbsp;      organization = "cloudnorth-tf-org"



&nbsp;      workspaces {

&nbsp;        name = "cloudnorth-final-project"

&nbsp;      }

&nbsp;    }

&nbsp;  }



5\. \*\*Initialize Terraform\*\*  

&nbsp;  - Run `terraform init` to initialize Terraform with the remote backend  

&nbsp;  - Terraform will prompt to migrate your local state to Terraform Cloud (approve this)



6\. \*\*Run Terraform Commands\*\*  

&nbsp;  - Use `terraform plan` and `terraform apply` as usual; state is now stored remotely  

&nbsp;  - Team members collaborating can use the same workspace for consistent state



\## Benefits



\- Centralized, secure state management  

\- Collaboration with team access controls  

\- Automatic state locking to prevent conflicts  

\- Detailed run history and audit logs  



