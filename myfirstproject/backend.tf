# backend.tf
terraform {
  backend "gcs" {
    bucket = "terraform-states-agnostic"  # Nombre del bucket en GCS
    prefix = "myfirstproject"           # Prefijo para el archivo de estado (opcional)
  }
}