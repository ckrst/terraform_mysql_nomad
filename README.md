# terraform_mysql_nomad
A mySQL service on a nomad cluster via terraform

create a backend.config file with the content

<code>
hostname = "app.terraform.io"

organization = "YOUR ORGANIZATION"

workspaces {
  name = "terraform_mysql_nomad"
}
</code>

Configure your backend with

<code>
terraform init --backend-config=backend.config
</code>

<!--  & 'C:\Users\Vincius Kirst\Documents\desenv\tools\terraform.exe' plan -->
