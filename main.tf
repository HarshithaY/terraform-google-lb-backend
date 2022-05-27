resource "google_compute_backend_service" "default" {
  project = var.project
  name    = var.backend
  health_checks = [google_compute_http_health_check.default.id]
}

resource "google_compute_http_health_check" "default" {
  name               = var.healthcheck
  request_path       = "/"
  check_interval_sec = 1
  timeout_sec        = 1
}
