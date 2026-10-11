resource "cloudflare_queue" "queues" {
  for_each = var.queues

  account_id = each.value.account_id
  queue_name = each.value.queue_name
  settings   = each.value.settings
}

