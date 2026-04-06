variable "app_name" {
  type        = string
  description = "Nome da aplicação"
  default     = "ci-cd"
}

variable "cloud_provider" {
  type    = string
  default = "aws"
}

variable "aws_region" {
  type        = string
  description = "Regiao AWS usada pelo provider e backend remoto"
  default     = "us-east-1"
}
