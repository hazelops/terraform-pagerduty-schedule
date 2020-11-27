output "schedule_id" {
  value = pagerduty_schedule.this[0].id
}

output "escalation_policy_id" {
  value = pagerduty_escalation_policy.this[0].id
}
