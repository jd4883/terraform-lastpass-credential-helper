data "lastpass_secret" "credentials" { id = data.external.credentials.result.id }
data "external" "credentials" {
  provisioner "local-exec" { command = "chmod +x ${path.module}/lastpass_lookup.sh" }
  program = ["${path.module}/lastpass_lookup.sh", var.secret]
}
