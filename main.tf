resource "pagerduty_schedule" "pd_schedule" {
  count     = var.enabled ? 1 : 0
  name      = var.schedule_name
  time_zone = var.time_zone

  layer {
    name                         = var.schedule_layer_name
    start                        = var.oncall_start
    rotation_virtual_start       = var.rotation_virtual_start
    rotation_turn_length_seconds = var.rotation_length
    users                        = var.layer_users
  }
}

resource "pagerduty_escalation_policy" "pd_escalation_policy" {
  count     = var.enabled ? 1 : 0
  name      = var.escalation_policy_name
  num_loops = var.num_loops

  rule {
    escalation_delay_in_minutes = var.escalation_delay

    target {
      type = var.escalation_policy_type
      id   = var.escalation_policy_target_id
    }
  }
}
