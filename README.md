# Aegis-Deploy

Production-Style AWS ECS/Fargate Deployment Platform for Safe Rollouts

Terraform-based cloud architecture project demonstrating canary deployments and A/B testing using weighted Application Load Balancer routing.

The platform provisions a **multi-AZ AWS environment running three isolated ECS/Fargate services behind an Application Load Balancer with weighted traffic routing.**

This allows safe experimentation with new versions while protecting production traffic.

---

# Architecture

![Aegis Deploy Architecture](Architecture.png)

The architecture uses AWS ECS with Fargate to run containerized applications across multiple availability zones.

Traffic is distributed using an Application Load Balancer that can dynamically shift traffic between service versions.

This architecture demonstrates a **safe deployment strategy used by modern cloud platforms.**

---

# Restaurant Analogy

![Restaurant Analogy](RestaurantAnalogy.png)

Imagine a restaurant testing new recipes.

Customers enter through a host who directs most people to the **main kitchen**, while sending a small number to **experimental kitchens** testing new dishes.

Traffic distribution might look like this:

| Service | Traffic | Purpose |
|-------|-------|-------|
| Production | 90% | Stable application version |
| Candidate A | 5% | Experimental deployment |
| Candidate B | 5% | Experimental deployment |

If a new version performs well, traffic can gradually shift toward it.

If something fails, traffic can instantly revert to production.

---

# Key Architecture Concepts Demonstrated

This project demonstrates several important cloud architecture concepts:

- Infrastructure-as-Code using Terraform
- Multi-AZ VPC architecture
- ECS container orchestration
- Application Load Balancer traffic routing
- Canary deployments
- A/B testing
- Observability using CloudWatch

These techniques are commonly used in production systems to reduce deployment risk.

---

# Infrastructure Stack

Cloud Services:

- AWS VPC
- AWS ECS (Fargate)
- AWS Application Load Balancer
- AWS IAM
- AWS CloudWatch

DevOps Tools:

- Terraform
- Docker
- GitHub

---

# Deployment Strategy

Aegis-Deploy models a safe deployment strategy commonly used in production cloud systems.

Instead of replacing the production application immediately, new versions are introduced gradually.

Traffic is distributed using weighted routing:

Production → 90%  
Candidate A → 5%  
Candidate B → 5%

This allows teams to observe performance and reliability before promoting a new version to production.

---

# Project Structure

```
aegis-deploy
│
├── Architecture.png
├── RestaurantAnalogy.png
├── README.md
└── LICENSE
```


In a full implementation, Terraform modules would typically be organized like:


Example Terraform module structure:

```
modules/
  network/
  alb/
  ecs/
  observability/
```


---

# Example Deployment Scenario

A new version of the application is deployed to **Candidate A**.

Traffic distribution:


Production      90%
Candidate A      5%
Candidate B      5%


If performance metrics look good:


Production      50%
Candidate A     50%


Eventually Candidate A can become the new Production release.

---

# Future Enhancements

Potential improvements to the platform include:

- CI/CD pipeline with GitHub Actions
- Automated traffic shifting
- Blue/Green deployments
- WAF integration
- Auto-scaling policies
- Deployment rollback automation

---

# Learning Objectives

This project was built while preparing for the **AWS Solutions Architect Associate certification**.

The goal is to develop hands-on understanding of:

- cloud architecture design
- deployment safety strategies
- infrastructure automation
- container orchestration
- observability and monitoring

---

# Documentation

Additional architecture and implementation notes can be found in the `docs` folder:

- Infrastructure Scaffold
- Deployment Flow
- Terraform Module Structure

---

# Terraform Scaffolding

A minimal Terraform module structure is included to illustrate how the Aegis-Deploy infrastructure could be organized in a production environment.

See:

terraform/modules
terraform/environments

---

# Author

Michael Hundelt  
Cloud Architecture Development Project  
2026

---

# License

MIT License
