data "lastpass_secret" "credentials" { id = data.external.credentials.result.id }
data "external" "credentials" {
  program = ["${path.module}/lastpass_lookup.sh", var.secret]
  depends_on = [null_resource.script]
}

resource "null_resource" "script" {
  provisioner "local-exec" { command = "chmod +x ${path.module}/lastpass_lookup.sh" }
}
