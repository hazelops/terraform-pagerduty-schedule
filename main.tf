resource "pagerduty_schedule" "this" {
  count     = var.enabled ? 1 : 0
  name      = var.name
  time_zone = var.time_zone

  layer {
    name                         = var.layer_name
    start                        = var.oncall_start
    rotation_virtual_start       = var.rotation_virtual_start
    rotation_turn_length_seconds = var.rotation_length_in_seconds
    users                        = var.layer_users
  }
}
