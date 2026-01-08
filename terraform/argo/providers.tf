terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0"
    }

    argocd = {
      source  = "argoproj-labs/argocd"
      version = "~> 7.0"
    }
  }
}

provider "argocd" {
  server_addr = "192.168.0.178:30098"
  username    = "admin"
  password    = "i4HxNXGfH64jrShh"
  insecure    = true
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}