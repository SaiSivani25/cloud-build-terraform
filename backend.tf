terraform {
  backend "gcs" {
    bucket = "hr-management-terraform-state"
    prefix = "terraform/state"
  }
}
