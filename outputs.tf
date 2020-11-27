output "schedule_id" {
  value = pagerduty_schedule.pd_schedule[0].id
}

output "escalation_policy_id" {
  value = pagerduty_escalation_policy.pd_escalation_policy[0].id
}
