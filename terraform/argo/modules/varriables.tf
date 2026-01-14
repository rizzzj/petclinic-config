variable "name" {}

variable "namespace" { 
    default = "argocd" 
}
variable "project" { 
    default = "default"
}
variable "repo_url" {}

variable "branch" { 
    default = "main"
}
variable "path" {}

variable "use_helm" {
  type    = bool
  default = false
}

variable "helm_values" {
  type    = list(string)
  default = []
  description = "List of Helm values files (only used if use_helm = true)"
}
variable "destination_namespace" {}

variable "destination_server" { 
    default = "https://kubernetes.default.svc" 
}

variable "automated_prune" { 
    default = true
}

variable "automated_self_heal" { 
    default = true

}
variable "sync_options" { 
    type = list(string) 
    default = ["CreateNamespace=true"] 
}
