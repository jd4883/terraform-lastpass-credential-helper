data "lastpass_secret" "credentials" { id = data.external.credentials.result.id }
data "external" "credentials" { program = ["bash", "${path.module}/lastpass_lookup.sh", var.secret] }
