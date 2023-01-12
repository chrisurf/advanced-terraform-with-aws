variable "name" {
  type        = string
  description = "(Required) Name of the parameter."
}

variable "type" {
  type        = string
  description = "(Required) Type of the parameter."
}

variable "value" {
  type        = string
  description = "(Optional) Value of the parameter, marked as sensitive."
  default     = null
}

variable "insecure_value" {
  type        = string
  description = "(Optional) Value of the parameter, not marked as sensitive."
  default     = null
}

variable "description" {
  type        = string
  description = "(Optional) Description of the parameter."
  default     = null
}

variable "key_id" {
  type        = string
  description = "(Optional) KMS key ID or ARN for encrypting a SecureString."
  default     = null
}

variable "overwrite" {
  type        = bool
  description = "(Optional, Deprecated) Overwrite an existing parameter."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "(Optional) Map of tags to assign to the object."
  default     = {}
}

variable "provider_default_tags" {
  type        = map(string)
  description = "Default tags provided by the provider."
  default     = {}
}

variable "tier" {
  type        = string
  description = "(Optional) Parameter tier to assign to the parameter."
  default     = null
}

variable "allowed_pattern" {
  type        = string
  description = "(Optional) Regular expression used to validate the parameter value."
  default     = null
}

variable "data_type" {
  type        = string
  description = "(Optional) Data type of the parameter."
  default     = null
}
