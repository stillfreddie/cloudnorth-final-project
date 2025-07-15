# CloudNorth Final Project





\*\*Project:\*\* CloudNorth  Global E-commerce Platform Infrastructure



This project provisions and manages secure, scalable infrastructure for an e-commerce company using modern Cloud DevOps best practices.



---



\##  Overview



This project demonstrates how to:



\- Provision cloud infrastructure with \*\*Terraform\*\*

\- Use modular Infrastructure as Code (IaC)

\- Deploy scalable compute using \*\*EC2\*\*, \*\*VPC\*\*, \*\*Security Groups\*\*, \*\*RDS\*\*, \*\*S3\*\*, and \*\*EKS\*\*

\- Use \*\*Helm\*\* to manage Kubernetes deployments with a \*\*Blue-Green strategy\*\*

\- Build and deploy containers with \*\*Docker\*\*

\- Automate builds with \*\*Jenkins CI/CD\*\*

\- Monitor the environment using \*\*Prometheus\*\*, \*\*Grafana\*\*, and \*\*CloudWatch\*\*

\- Secure the pipeline with proper \*\*Secrets Management\*\* and `.gitignore` best practices



---



\##  Tech Stack



✅ \*\*Cloud Provider:\*\* AWS  

✅ \*\*IaC:\*\* Terraform (with remote backend in Terraform Cloud)  

✅ \*\*Containerization:\*\* Docker  

✅ \*\*Orchestration:\*\* Kubernetes (EKS)  

✅ \*\*Package Management:\*\* Helm  

✅ \*\*CI/CD:\*\* Jenkins  

✅ \*\*Monitoring:\*\* Prometheus, Grafana, AWS CloudWatch



---



\## Key Features



\- \*\*Infrastructure as Code:\*\* All infra resources are defined using modular Terraform scripts.

\- \*\*Blue-Green Deployments:\*\* Helm charts for frontend and backend support Blue-Green rollouts.

\- \*\*Secrets Management:\*\* Secrets are handled securely with `.gitignore`, Kubernetes Secrets, and Jenkins Credentials Manager.

\- \*\*Secure Networking:\*\* VPC, subnets, security groups, IAM roles, and key pairs follow best practices.

\- \*\*Monitoring:\*\* Prometheus and Grafana dashboards plus CloudWatch for logs and alerts.

\- \*\*Branching Strategy:\*\* GitHub version control with `main`, `dev`, and `feature/\*` branches.



---



\##  Naming Conventions



All resources follow a consistent `cloudnorth-\*` prefix, including:

\- VPCs: `cloudnorth-vpc`

\- Subnets, Security Groups, EC2 instances

\- RDS DB: `cloudnorth-db-instance`

\- S3 Bucket: `cloudnorth-static-site-bucket`

\- EKS Cluster: `cloudnorth-eks-cluster`

\- IAM Roles: `cloudnorth-eks-role`, `cloudnorth-jenkins-role`

\- Helm charts: `frontend` and `backend` with Blue/Green values files



---



\##  Repository Structure





