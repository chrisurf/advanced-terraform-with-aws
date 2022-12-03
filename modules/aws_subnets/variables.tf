variable "subnets" {
  type = list(object({
    name                                           = string
    vpc_id                                         = string
    assign_ipv6_address_on_creation                = optional(bool)
    availability_zone                              = optional(string)
    availability_zone_id                           = optional(string)
    cidr_block                                     = optional(string)
    customer_owned_ipv4_pool                       = optional(string)
    enable_dns64                                   = optional(bool)
    enable_lni_at_device_index                     = optional(number)
    enable_resource_name_dns_aaaa_record_on_launch = optional(bool)
    enable_resource_name_dns_a_record_on_launch    = optional(bool)
    ipv6_cidr_block                                = optional(string)
    ipv6_native                                    = optional(bool)
    map_customer_owned_ip_on_launch                = optional(bool)
    map_public_ip_on_launch                        = optional(bool)
    outpost_arn                                    = optional(string)
    private_dns_hostname_type_on_launch            = optional(string)
    tags                                           = optional(map(string))
    cidr_tag                                       = optional(bool, true)
  }))
  description = "A list of objects representing subnet configurations."
  default     = []
}

variable "enabled" {
  type        = bool
  description = "(Optional) This enables the module, the default is true."
  default     = true
}