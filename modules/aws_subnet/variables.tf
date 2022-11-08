variable "vpc_id" {
  type        = string
  description = "The VPC ID."
}

variable "assign_ipv6_address_on_creation" {
  type        = bool
  description = "(Optional) Specify true to indicate that network interfaces created in the specified subnet should be assigned an IPv6 address. Default is false."
  default     = false
}

variable "availability_zone" {
  type        = string
  description = "(Optional) AZ for the subnet."
  default     = null
}

variable "availability_zone_id" {
  type        = string
  description = "(Optional) AZ ID of the subnet. This argument is not supported in all regions or partitions. If necessary, use availability_zone instead."
  default     = null
}

variable "cidr_block" {
  type        = string
  description = "(Optional) The IPv4 CIDR block for the subnet."
  default     = null
}

variable "customer_owned_ipv4_pool" {
  type        = string
  description = "(Optional) The customer owned IPv4 address pool."
  default     = null
}

variable "enable_dns64" {
  type        = bool
  description = "(Optional) Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. Default is false."
  default     = false
}

variable "enable_lni_at_device_index" {
  type        = number
  description = "(Optional) Indicates the device position for local network interfaces in this subnet."
  default     = null
}

variable "enable_resource_name_dns_aaaa_record_on_launch" {
  type        = bool
  description = "(Optional) Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.Default is false."
  default     = false
}

variable "enable_resource_name_dns_a_record_on_launch" {
  type        = bool
  description = "(Optional) Indicates whether to respond to DNS queries for instance hostnames with DNS A records. Default is false."
  default     = false
}

variable "ipv6_cidr_block" {
  type        = string
  description = "(Optional) The IPv6 network range for the subnet, in CIDR notation."
  default     = null
}

variable "ipv6_native" {
  type        = bool
  description = "(Optional) Indicates whether to create an IPv6-only subnet."
  default     = null
}

variable "map_customer_owned_ip_on_launch" {
  type        = bool
  description = "(Optional) Specify true to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. Default is false."
  default     = null
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "(Optional) Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false."
  default     = false
}

variable "outpost_arn" {
  type        = string
  description = "(Optional) The Amazon Resource Name (ARN) of the Outpost."
  default     = null
}

variable "private_dns_hostname_type_on_launch" {
  type        = string
  description = "(Optional) The type of hostnames to assign to instances in the subnet at launch."
  default     = "ip-name"
}

variable "tags" {
  type        = map(string)
  description = "(Optional) A map of tags to assign to the resource."
  default     = {}
}
