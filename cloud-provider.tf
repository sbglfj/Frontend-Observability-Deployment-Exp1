terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
    }
  }
}

provider "grafana" {
  alias = "cloud"

  cloud_access_policy_token = "lsa_mNP6lEHszsvtIVFJzSAqlxXhQWzFh3ig_715c2eaa"
}

data "grafana_cloud_stack" "stack" {
  provider = grafana.cloud

  slug = "sbglfj"
}
