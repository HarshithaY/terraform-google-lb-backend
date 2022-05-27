variable "project" {
  description = "The project to deploy to"
  type        = string
  default     = ""
}

variable "backend" {
  description = "Backend service name"
  type        = string
  default     = ""
}

variable "healthcheck" {
  description = "Healthcheck name"
  type        = string
  default     = ""
}
