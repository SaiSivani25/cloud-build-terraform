# Cloud Build Terraform Pipeline

A fully automated CI/CD pipeline on GCP that deploys a Python Calculator app using Cloud Build, Terraform, and Docker.

## Pipeline Flow
- Push code to GitHub
- Cloud Build triggers automatically
- Terraform provisions GCP infrastructure
- Docker image built and pushed to Artifact Registry
- App deployed to Cloud Run

## Technologies Used
- Cloud Build
- Terraform
- Docker
- Artifact Registry
- Cloud Run
- Service Account Impersonation

## Live App
https://calculator-app-791907021272.us-central1.run.app
