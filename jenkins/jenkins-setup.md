# Jenkins Setup

\# Jenkins Setup Guide



This document outlines the steps to set up Jenkins for the CloudNorth project, including creating credentials and configuring the CI/CD pipeline.



\## 1. Install Jenkins



\- Install Jenkins on your VPS, server, or local machine.

\- Ensure Jenkins is accessible via your browser.

\- Install required plugins:

&nbsp; - Pipeline

&nbsp; - Git

&nbsp; - Credentials Binding

&nbsp; - Docker Pipeline

&nbsp; - Kubernetes CLI (if applicable)



\## 2. Configure Credentials



Create the following credentials in Jenkins to securely manage secrets:



\### AWS Credentials



\- Go to \*\*Manage Jenkins > Credentials > System > Global credentials\*\*.

\- Click \*\*Add Credentials\*\*.

\- Select \*\*Secret text\*\* or \*\*Username with password\*\* based on your AWS access method.

\- Enter your \*\*AWS Access Key ID\*\* and \*\*AWS Secret Access Key\*\*.

\- Assign IDs:

&nbsp; - `aws-access-key` for the Access Key ID

&nbsp; - `aws-secret-key` for the Secret Access Key



\### DockerHub Credentials



\- Add \*\*Username with password\*\* credentials.

\- Enter your DockerHub username (`stillfreddie`) and password or access token.

\- Assign the ID: `dockerhub-creds`



\## 3. Create Jenkins Pipeline Job



\- Create a new \*\*Pipeline\*\* job in Jenkins.

\- Configure the job to pull your GitHub repo containing the CloudNorth code.

\- Set the Pipeline script path to `Jenkinsfile`.

\- Ensure the pipeline uses the credentials IDs as referenced in the Jenkinsfile.



\## 4. Configure Jenkins Agent Environment



\- Ensure the Jenkins agent has Docker, Helm, and kubectl installed.

\- Make sure the agent has access to your Kubernetes cluster (EKS/AKS).



\## 5. Run the Pipeline



\- Trigger the pipeline manually or via GitHub webhook.

\- Verify the stages: checkout, build, push, deploy run successfully.



