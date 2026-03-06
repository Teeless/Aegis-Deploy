## Architecture

![Aegis Deploy Architecture](Explainer.png)

---

## Restaurant Analogy

![Restaurant Analogy](RestaurantAnalogy.png)
# Aegis-Deploy
Production-Style AWS Deployment Platform for Safe Rollouts
Aegis-Deploy is a Terraform-based cloud infrastructure project that simulates how modern companies safely deploy new application versions using canary releases and A/B testing.

The platform provisions a multi-AZ AWS environment running three isolated ECS/Fargate services behind an Application Load Balancer with weighted traffic routing.

This allows safe experimentation with new versions while protecting production traffic.

Architecture Overview

The system runs three application versions simultaneously:

Service	Traffic	Purpose
Production	90%	Stable version
Candidate A	5%	Experimental release
Candidate B	5%	Experimental release

The Application Load Balancer distributes requests across services using weighted routing.

This enables:

• Canary deployments
• A/B testing
• Gradual promotion to production
• Safe rollback if issues occur

System Architecture

Add your architecture image here.

/docs/architecture.png

Example flow:

Internet
   │
   ▼
Application Load Balancer
   │
   ├── 90% → Production Service
   │
   ├── 5% → Candidate A
   │
   └── 5% → Candidate B
Infrastructure Stack

The platform is built entirely using Infrastructure-as-Code.

Cloud Services

• AWS VPC (Multi-AZ)
• AWS ECS (Fargate)
• AWS Application Load Balancer
• AWS CloudWatch
• AWS IAM

DevOps Tools

• Terraform
• Docker
• GitHub Actions (planned)

Terraform Project Structure
aegis-deploy
│
├── modules
│   ├── network
│   ├── alb
│   ├── ecs
│   └── observability
│
├── environments
│   ├── dev
│   └── prod
│
├── docs
│   └── architecture.png
│
└── app
    ├── Dockerfile
    └── app.py

This modular structure allows environments to be created quickly while maintaining consistent infrastructure patterns.

Key Architecture Concepts Demonstrated
Infrastructure-as-Code

All infrastructure is provisioned using Terraform modules.

Network Segmentation

The VPC includes:

• Public subnets (ALB)
• Private subnets (ECS tasks)
• NAT gateway for outbound access

Safe Deployment Strategy

Weighted routing allows incremental rollout of new versions.

This is similar to strategies used by companies like:

• Amazon
• Netflix
• Spotify

Example Deployment Scenario

A new feature is deployed to Candidate A.

Traffic distribution:

Production      90%
Candidate A      5%
Candidate B      5%

If metrics look good:

Production      50%
Candidate A     50%

Then eventually:

Production → replaced by Candidate A
Observability

Each service publishes logs and metrics to CloudWatch.

Monitoring includes:

• Request latency
• Error rates
• Health checks
• Container logs

This allows real-time comparison between production and experimental releases.

Roadmap

Planned enhancements:

• CI/CD pipeline (GitHub Actions → ECR → ECS)
• HTTPS via ACM
• AWS WAF integration
• Auto-scaling policies
• Blue/Green deployments
• Deployment rollback automation

Learning Objectives

This project was built while preparing for the AWS Solutions Architect Associate certification.

Focus areas include:

• Cloud networking design
• container orchestration
• deployment safety strategies
• infrastructure automation
• observability

The goal is to develop practical cloud architecture experience, not just certification knowledge.

Author

Michael Hundelt
Cloud Architecture Development Project
2026

⭐ If you found this useful

Feel free to star the repo or connect with me on LinkedIn.
