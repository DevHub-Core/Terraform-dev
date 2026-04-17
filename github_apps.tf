locals {
  github_apps = {
    "Renovate" = {
      installation_id = var.installation_id_renovate
      description     = "Datadog monitoring integration"
    }
  }
}

# ============================================================
# HOW TO REQUEST ACCESS
# Find the app you need, add your repo name to the list.
# Open a PR. That's it.
# ============================================================

resource "github_app_installation_repository" "Renovate" {
  for_each        = toset([
    "Terraform-dev",
    "Customer-Order-Dev",
  ])
  installation_id = local.github_apps["Renovate"].installation_id
  repository      = each.value
}