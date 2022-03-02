variable "token" {
  default = ""
  description = "Token de acesso a digital ocean"
}

variable "nome_droplet"{
  default = "lab-tf"
  description = "Nome da máquina que está sendo criada"
}

variable "regiao" {
  default = "nyc1"
  description = "regiao de uso na digital ocean"
}