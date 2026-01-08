provider "argocd" {
  server_addr = "192.168.0.178:30098"
  username    = "admin"
  password    = local.password
  insecure    = true
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "argocd_application" "petclinic" {
  metadata {
    name      = "petclinic"
    namespace = "argocd"
  }

  spec {
    project = "default"

    source {
      repo_url        = "https://github.com/rizjosel/petclinic-config.git"
      target_revision = "stable" 
      path            = "app"

      helm {
        value_files = ["values.yaml"]
      }
    }

    destination {
      server    = "https://kubernetes.default.svc"
      namespace = "myapp"
    }

    sync_policy {
      automated {
        prune     = true
        self_heal = true
      }
    }

    sync_policy_options = ["CreateNamespace=true"]
  }
}
