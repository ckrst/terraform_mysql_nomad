terraform {
  backend "remote" {}
}

provider "nomad" {}

resource "nomad_namespace" "dev" {
  name        = "dev"
  description = "Recursos para desenvolvimento"
  # quota       = "dev"
}

resource "nomad_job" "app" {
  jobspec = file("${path.module}/mysql_job.hcl")
}
