terraform {
  required_providers {
    argocd = {
      source  = "argoproj-labs/argocd"
      version = "~> 7.12"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0"
    }
  }
}

resource "argocd_application" "name" {
  metadata {
    name      = var.name
    namespace = var.namespace
  }

  spec {
    project = var.project

    source {
      repo_url        = var.repo_url
      target_revision = var.branch
      path            = var.path

      dynamic "helm" {
        for_each = var.use_helm ? [1] : []
        content {
          value_files = var.helm_values
        }
      }
    }

    destination {
      server    = var.destination_server
      namespace = var.destination_namespace
    }

    sync_policy {
      automated {
        prune     = var.automated_prune
        self_heal = var.automated_self_heal
      }
      sync_options = var.sync_options
    }
  }
}
