
terraform {
  required_version = ">= 0.13"
  required_providers {

    google = {
      source  = "hashicorp/google"
      version = "4.55.0"
    }
  }

  provider_meta "google" {
    module_name = "blueprints/terraform/terraform-google-memorystore/v7.1.0"
  }

}
