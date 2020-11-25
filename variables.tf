variable "pagerduty_token" {}

variable "enabled" {
  type        = bool
  default     = true
  description = "Gives ability to enable or disable a module"
}

variable "schedule_name" {
  description = "Name of schedule. Make it meaningful"
}

variable "schedule_layer_name" {
  description = "The name of the schedule layer (e.g. Night Shift)"
}

variable "time_zone" {
  default = "America/Los_Angeles"
}

variable "oncall_start" {
  default = "2018-01-29T12:00:00-08:00"
}

variable "rotation_virtual_start" {
  default = "2018-01-29T12:00:00-08:00"
}

variable "rotation_length" {
  default = 604800
}

variable "layer_users" {
  type = list
}

variable "escalation_policy_name" {
  description = "Name of escalation policy. Make it meaningful"
}

variable "escalation_policy_type" {
  description = "Can be user, schedule, user_reference or schedule_reference"
  default     = "schedule"
}

variable "num_loops" {
  default = 2
}

variable "escalation_delay" {
  default = 15
}

variable "escalation_policy_target_id" {}
