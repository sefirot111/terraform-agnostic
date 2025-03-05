terraform {
  required_version = ">= 1.0"

  required_providers {

    google = {
      source  = "hashicorp/google"
      #version = "3.73.0"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      #version = "~> 3.83.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      #version = ">= 2.16.1"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}

provider "google" {
  project = "myfirstproject"
  region = "us-east1"
}

provider "google-beta" {
  project = "myfirstproject"
  region = "us-east1"
}