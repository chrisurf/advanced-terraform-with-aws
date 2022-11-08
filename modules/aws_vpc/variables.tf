variable "cidr_block" {
  type        = string
  description = "(Optional) The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4_netmask_length."
}

variable "instance_tenancy" {
  type        = string
  description = "(Optional) A tenancy option for instances launched into the VPC. Default is default, which ensures that EC2 instances launched in this VPC use the EC2 instance tenancy attribute specified when the EC2 instance is launched."
  default     = "default"
}

variable "ipv4_ipam_pool_id" {
  type        = string
  description = "(Optional) The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR."
  default     = null
}

variable "ipv4_netmask_length" {
  type        = number
  description = "(Optional) The netmask length of the IPv4 CIDR you want to allocate to this VPC."
  default     = null
}

variable "ipv6_cidr_block" {
  type        = string
  description = "(Optional) IPv6 CIDR block to request from an IPAM Pool."
  default     = null
}

variable "ipv6_ipam_pool_id" {
  type        = string
  description = "(Optional) IPAM Pool ID for an IPv6 pool."
  default     = null
}

variable "ipv6_netmask_length" {
  type        = number
  description = "(Optional) Netmask length to request from IPAM Pool."
  default     = null
}

variable "ipv6_cidr_block_network_border_group" {
  type        = string
  description = "(Optional) By default, when an IPv6 CIDR is assigned to a VPC, a default ipv6_cidr_block_network_border_group will be set to the region of the VPC."
  default     = null
}

variable "enable_dns_support" {
  type        = bool
  description = "(Optional) A boolean flag to enable/disable DNS support in the VPC."
  default     = true
}

variable "enable_network_address_usage_metrics" {
  type        = bool
  description = "(Optional) Indicates whether Network Address Usage metrics are enabled for your VPC."
  default     = false
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "(Optional) A boolean flag to enable/disable DNS hostnames in the VPC."
  default     = false
}

variable "assign_generated_ipv6_cidr_block" {
  type        = bool
  description = "(Optional) Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC."
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "(Optional) A map of tags to assign to the resource."
  default     = {}
}
