variable "env" {
  type        = string
  default     = ""
  description = "(Required) The given environment."
}

variable "file_extention" {
  type        = string
  default     = "yaml"
  description = "(Optional) The config file extention json, yaml or yml. The default is yaml."
}

variable "path" {
  type        = string
  default     = "./environments/"
  description = "(Optional) The path to the config file."
}

variable "prefix" {
  type        = string
  default     = ""
  description = "(Optional) he config file prefix"
}

variable "suffix" {
  type        = string
  default     = ""
  description = "(Optional) The config file sufix"
}

variable "ignore" {
  type        = string
  default     = "default"
  description = "(Optional) Ignore this environment. The default is set to default."
}