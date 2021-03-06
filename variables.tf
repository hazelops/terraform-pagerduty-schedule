variable "enabled" {
  type        = bool
  default     = true
  description = "Gives ability to enable or disable a module"
}

variable "name" {
  description = "Name of schedule. Make it meaningful"
}

variable "time_zone" {
  default = "America/Los_Angeles"
}

variable "layer_name" {
  description = "The name of the schedule layer (e.g. Night Shift)"
}

variable "oncall_start" {
  description = "The start time of the schedule layer. This value will not be read back from the PagerDuty API because the API will always return a new start time, which represents the last updated time of the schedule layer."
  default = "2018-01-29T12:00:00-08:00"
}

variable "rotation_virtual_start" {
  description = "The effective start time of the schedule layer. This can be before the start time of the schedule."
  default = "2018-01-29T12:00:00-08:00"
}

variable "rotation_length_in_seconds" {
  description = "The duration of each on-call shift in seconds."
  default = 604800
}

variable "layer_users" {
  description = "The ordered list of users on this layer. The position of the user on the list determines their order in the layer."
  type = list
}
