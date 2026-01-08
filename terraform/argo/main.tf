module "petclinic_stage" {
  source = "./modules/argocd-app"

  name                  = "petclinic-stage-app"
  path                  = "app/stage"
  repo_url              = "https://github.com/rizjosel/petclinic-config.git"
  branch                = "stable"
  destination_namespace = "myapp-stage"
  use_helm              = true
  helm_values           = ["values.yaml"]
}