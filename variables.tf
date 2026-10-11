variable "queues" {
  description = <<EOT
Map of queues, attributes below
Required:
    - account_id
    - queue_name
Optional:
    - settings
EOT

  type = map(object({
    account_id = string
    queue_name = string
    settings = optional(object({
      delivery_delay           = optional(number)
      delivery_paused          = optional(bool)
      message_retention_period = optional(number)
    }))
  }))
}

