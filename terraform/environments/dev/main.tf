# Development Environment

# This environment composes the infrastructure modules
# for development and testing deployments.

module "network" {
  source = "../../modules/network"
}

module "alb" {
  source = "../../modules/alb"
}

module "ecs" {
  source = "../../modules/ecs"
}

module "observability" {
  source = "../../modules/observability"
}
