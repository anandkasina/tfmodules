terraform {
  required_version = ">= 0.13"
  required_providers {

    google = {
      source  = "hashicorp/google"
      version = "4.55.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  provider_meta "google" {
    module_name = "blueprints/terraform/terraform-google-cloud-nat/v2.2.2"
  }

}