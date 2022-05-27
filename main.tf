
resource "google_compute_backend_service" "default" {
  project = var.project
  name    = var.backend
  region   = var.region
  protocol = var.ip_protocol
  network  = var.network
  connection_draining_timeout_sec = var.connection_draining_timeout_sec
  session_affinity                = var.session_affinity
  dynamic "backend" {
    for_each = var.backends
    content {
      group       = lookup(backend.value, "group", null)
      description = lookup(backend.value, "description", null)
      failover    = lookup(backend.value, "failover", null)
    }
  }
  health_checks = [google_compute_http_health_check.default.id]
}

resource "google_compute_http_health_check" "default" {
  name               = var.healthcheck
  request_path       = "/"
  check_interval_sec = 1
  timeout_sec        = 1
}
