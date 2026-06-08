# DevOps Practice Repository

A hands-on DevOps portfolio project demonstrating real-world infrastructure and automation practices.

![CI](https://github.com/stepanpeknyy/Practice_For_DevOps/actions/workflows/ci.yml/badge.svg)

## What This Project Covers

### CI/CD Pipeline
- GitHub Actions pipeline with build, lint, test, docker build stages
- Multi-environment deployment (staging + production with manual approval gate)
- Automated deployment to AWS EC2 via SSH

### Infrastructure as Code
- Terraform configs for AWS VPC, subnets, EC2, S3, IAM
- Local Terraform practice with state management
- Modular, reusable infrastructure definitions

### Containerization
- Custom Dockerfiles and Docker Compose setups
- Image vulnerability scanning with Trivy
- Non-root container security practices

### Kubernetes
- Deployments, Services, ConfigMaps, Secrets
- Persistent Volumes, Health probes, HPA
- Helm charts for application packaging
- RBAC and NetworkPolicies for security
- GitOps with ArgoCD for automated sync

### Monitoring & Observability
- Prometheus + Grafana stack via Helm
- Custom dashboards and alert rules
- Log checking and system monitoring scripts

### AWS Cloud
- EC2, S3, VPC, IAM with least privilege
- Custom VPC with public/private subnets
- CLI-based infrastructure management

### Linux & Bash
- System administration scripts
- Log analysis and backup automation
- Cron-based monitoring

## Repository Structure

\`\`\`
├── .github/workflows/    # CI/CD pipeline definitions
├── docker/               # Dockerfiles and compose configs
├── k8s/                  # Kubernetes manifests
├── myapp/                # Helm chart
├── scripts/              # Bash utility scripts
└── terraform/            # Infrastructure as Code
\`\`\`

## Tech Stack

`Git` `Docker` `Kubernetes` `Helm` `Terraform` `AWS` `GitHub Actions` `ArgoCD` `Prometheus` `Grafana` `Bash` `Linux`