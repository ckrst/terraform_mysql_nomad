terraform {
  backend "remote" {}
}

provider "nomad" {
  address = var.nomad_url
}

resource "nomad_job" "app" {
  jobspec = file("${path.module}/mysql_job.hcl")
}
