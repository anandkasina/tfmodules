resource "google_cloudbuild_trigger" "cloud-function-trigger" {
  name        = var.trigger_name
  location    = var.trigger_location
  description = var.trigger_description


  dynamic "trigger_template" {
    for_each = var.github_enabled ? [] : [1]
    content {
      branch_name = var.branch_name
      repo_name   = var.repo_name
    }
  }

  dynamic "github" {
    for_each = var.github_enabled ? [1] : []
    content {
      owner = var.repo_owner
      name  = var.repo_name
      push {
        branch = var.branch_name
      }
    }
  }

  substitutions = {
    _FUNCTION_NAME   = var.cloud_function_name
    _FUNCTION_REGION = var.cloud_function_region
    _BUCKET_NAME     = var.bucket_name
  }
  filename = var.cloud_build_file_name
  tags     = var.trigger_tags
}