terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
    }
  }
}

provider "grafana" {
  alias = "cloud"

  cloud_access_policy_token = "glc_eyJvIjoiMTIyNTM3MSIsIm4iOiJmcm9udGVuZC1vYnNlcnZhYmlsaXR5LWdyYWZhbmEtY2xvdWQtYWNjZXNzLXRva2VuLWZyb250ZW5kLW9ic2VydmFiaWxpdHktZ3JhZmFuYS1jbG91ZC1hY2Nlc3MtcG9saWN5LXRva2VuIiwiayI6Ijc1ODlDMUtNOHZMVFZOeVEzM084NkpSVyIsIm0iOnsiciI6InByb2QtdXMtZWFzdC0wIn19"
}

data "grafana_cloud_stack" "stack" {
  provider = grafana.cloud

  slug = "sbglfj"
}
