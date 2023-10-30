terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = "/home/gcpvm/ServiceAccount/hy-20231030-001-e55877804b4e.json"
  project     = "hy-20231030-001"
}


module "statesto" {
  source = "./statesto"
}


terraform {
  backend "gcs" {
    bucket = "eb869d0a74f36617-bucket-tfstate"
  }
}