output "api_key_string" {
  value       =  google_apikeys_key.primary.key_string
  description = "An encrypted and signed value held by this key"
}
