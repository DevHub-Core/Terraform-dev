terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.11"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_org
}