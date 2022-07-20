variable "amount" {
  type        = number
  default     = 1
  description = "Quantidade de máquinas"
}

variable "name" {
  type        = string
  description = "Nome da instancia"
}

variable "machine_type" {
  type        = string
  description = "Tamanho da instancia"
  default     = "f1-micro"
}

variable "zone" {
  type        = string
  description = "Em qual zona sua instancia ficará"
  default     = "us-central1-a"
}

variable "image" {
  type        = string
  description = "Qual sistema deseja utilizar"
  default     = "debian-cloud/debian-10"
}

variable "network" {
  type        = string
  description = "Qual rede deseja utilizar"
  default     = "default"
}

