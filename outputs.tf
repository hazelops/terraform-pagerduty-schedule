output "id" {
  value = join("", pagerduty_schedule.this[0].id)
}
