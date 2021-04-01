output "id" {
  value = var.enabled ? pagerduty_schedule.this[0].id : ""
}

