provider "aws" {
  region = "us-west-2"
}

resource "null_resource" "this" {
  provisioner "local-exec" {
    command = <<EOT
      echo "Hello world ${var.name} v${var.interscript_version}"
    EOT
  }

  triggers = {
    uuid = uuid()
  }
}
