variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

variable "github_org" {
  description = "GitHub org or personal username"
  type        = string
}

variable "installation_id_renovate" {
  description = "The installation ID of the GitHub App"
  type        = string
}