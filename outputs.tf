output "name" {
  value       = google_compute_instance.this[*].name // [*] --> tras todos os recursos que foram criados (no caso, com estou criando mais de um)
  description = "Nome da VM"
}

output "instance_id" {
  value       = google_compute_instance.this[*].instance_id
  description = "ID da VM"
}

output "external_ip" {
  value       = google_compute_instance.this[*].network_interface[0].access_config[0].nat_ip
  description = "IP externo da VM"
}

output "internal_ip" {
  value       = google_compute_instance.this[*].network_interface[0].network_ip
  description = "IP interno da VM"
}

# Na response do modulo (outputs.tf) vamos buscar sempre devolver o mesmo nome dos atributos de referencia
# caso nao seja possível, tentar aproximar a um nome que signifique bem o que seja, para facilitar a vida do usuário
