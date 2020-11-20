resource "pagerduty_schedule" "pd_schedule" {
  count     = var.enabled ? 1 : 0
  name      = var.name
  time_zone = var.time_zone

  layer {
    name                         = var.name
    start                        = var.oncall_start
    rotation_virtual_start       = var.rotation_virtual_start
    rotation_turn_length_seconds = var.rotation_length
    users                        = [var.users]
  }
}
