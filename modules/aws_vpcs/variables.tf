variable "vpcs" {
  type = list(object({
    name                                 = string
    cidr_block                           = string
    instance_tenancy                     = optional(string)
    ipv4_ipam_pool_id                    = optional(string)
    ipv4_netmask_length                  = optional(number)
    ipv6_cidr_block                      = optional(string)
    ipv6_ipam_pool_id                    = optional(string)
    ipv6_netmask_length                  = optional(number)
    ipv6_cidr_block_network_border_group = optional(string)
    enable_dns_support                   = optional(bool)
    enable_network_address_usage_metrics = optional(bool)
    enable_dns_hostnames                 = optional(bool)
    assign_generated_ipv6_cidr_block     = optional(bool)
    tags                                 = optional(map(string))
  }))
  description = "A list of objects representing VPC configurations."
  default     = []
}

variable "enabled" {
  type        = bool
  description = "(Optional) This enables the module, the default is true."
  default     = true
}