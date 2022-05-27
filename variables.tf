variable "project" {
  description = "The project to deploy to, if not set the default provider project is used."
  default     = ""
}

variable "backend" {
  description = "Backend service name"
  default     = ""
}

variable "healthcheck" {
  description = "Healthcheck name"
  default     = ""
}
