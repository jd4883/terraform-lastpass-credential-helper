output "username" { value = sensitive(data.lastpass_secret.credentials.username) }
output "password" { value = sensitive(data.lastpass_secret.credentials.password) }
