variable "cidr_block" {
  type        = string
  description = "(Required) the top level CIDR block."
}

# TODO: make no_subnets optional
variable "no_subnets" {
  type        = number
  description = "(Required) the number of subnets to be created."
}

variable "target_notation" {
  type        = number
  description = "(Required) the target subnet mask notation of the new subnets to be created."
  default     = null
}

variable "hosts_subnet" {
  type        = number
  description = "(Required) the number of hosts available in each target subnet to be created."
  default     = null
}