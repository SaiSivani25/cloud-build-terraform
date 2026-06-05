# Existing Storage Bucket
resource "google_storage_bucket" "my_bucket" {
  name     = var.bucket_name
  location = "US"
}

# Artifact Registry Repository
resource "google_artifact_registry_repository" "my_repo" {
  location      = var.region
  repository_id = "calculator-repo"
  format        = "DOCKER"
}

# Cloud Run Service
resource "google_cloud_run_v2_service" "calculator" {
  name     = "calculator-app"
  location = var.region

  template {
    containers {
      image = "${var.region}-docker.pkg.dev/${var.project_id}/calculator-repo/calculator:latest"
    }
  }
}