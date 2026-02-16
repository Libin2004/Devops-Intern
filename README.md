# Automated Strapi Deployment using Docker, Terraform, and GitHub Actions

## Project Overview

This project demonstrates an end-to-end CI/CD pipeline that automatically builds a Docker image for a Strapi application, pushes it to Docker Hub, and deploys it to an AWS EC2 instance using Terraform.

The goal of this project is to showcase practical DevOps skills including containerization, infrastructure provisioning, and CI/CD automation.

---

## Key Features

* Automated Docker image build using GitHub Actions
* Image pushed to Docker Hub with commit-based versioning
* Infrastructure provisioning using Terraform
* Automated EC2 configuration using user-data scripts
* Containerized Strapi deployment on AWS
* Manual deployment control using workflow_dispatch
* Secure credential management using GitHub Secrets

---

## Tech Stack

* Docker
* Terraform
* GitHub Actions
* AWS EC2
* Strapi (Node.js CMS)
* Linux

---

## CI/CD Workflow

### Continuous Integration (CI)

Triggered on push to the `main` branch:

1. Checkout repository
2. Build Docker image for Strapi
3. Tag image using Git commit SHA
4. Push image to Docker Hub

---

### Continuous Deployment (CD)

Manually triggered workflow:

1. Initialize Terraform
2. Provision AWS EC2 instance
3. Install Docker using user-data
4. Pull Docker image from Docker Hub
5. Run Strapi container on port 1337

---

## Deployment Architecture

```
Developer Push
      ↓
GitHub Actions (CI)
      ↓
Docker Hub
      ↓
Terraform Workflow (CD)
      ↓
AWS EC2
      ↓
Docker Container (Strapi)
```

---

## Environment Variables Used by Strapi

```
HOST=0.0.0.0
PORT=1337
APP_KEYS
API_TOKEN_SALT
ADMIN_JWT_SECRET
JWT_SECRET
```

---

## How to Deploy

Push changes:

```
git push origin main
```

Run deployment:

```
GitHub → Actions → Terraform Deploy → Run workflow
```

Access application:

```
http://EC2_PUBLIC_IP:1337
```

---

## DevOps Skills Demonstrated

* CI/CD pipeline design
* Docker image lifecycle management
* Infrastructure as Code (Terraform)
* AWS EC2 provisioning
* Linux automation with user-data scripts
* Secret management in GitHub Actions
* Debugging container startup issues

---

## Author

Libin
