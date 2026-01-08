module "petclinic" {
  source = "./modules"

  providers = {
    argocd     = argocd
    kubernetes = kubernetes
  }

  name                  = "petclinic"
  path                  = "app"
  repo_url              = "https://github.com/rizjosel/petclinic-config.git"
  branch                = "stable"
  destination_namespace = "myapp"
  use_helm              = true
  helm_values           = ["values.yaml"]
}

module "elasticsearch" {
  source = "./modules"

  providers = {
    argocd     = argocd
    kubernetes = kubernetes
  }

  name                  = "elasticsearch"
  path                  = "app"
  repo_url              = "https://github.com/rizjosel/petclinic-config.git"
  branch                = "stable"
  destination_namespace = "logging"
}

module "kibana" {
  source = "./modules"

  providers = {
    argocd     = argocd
    kubernetes = kubernetes
  }

  name                  = "kibana"
  path                  = "app"
  repo_url              = "https://github.com/rizjosel/petclinic-config.git"
  branch                = "stable"
  destination_namespace = "logging"
}

module "filebeat" {
  source = "./modules"

  providers = {
    argocd     = argocd
    kubernetes = kubernetes
  }

  name                  = "filebeat"
  path                  = "app"
  repo_url              = "https://github.com/rizjosel/petclinic-config.git"
  branch                = "stable"
  destination_namespace = "logging"
}

module "grafana" {
  source = "./modules"

  providers = {
    argocd     = argocd
    kubernetes = kubernetes
  }

  name                  = "grafana"
  path                  = "app"
  repo_url              = "https://github.com/rizjosel/petclinic-config.git"
  branch                = "stable"
  destination_namespace = "grafana"
}

module "prometheus" {
  source = "./modules"

  providers = {
    argocd     = argocd
    kubernetes = kubernetes
  }

  name                  = "prometheus"
  path                  = "app"
  repo_url              = "https://github.com/rizjosel/petclinic-config.git"
  branch                = "stable"
  destination_namespace = "prometheus"
}
