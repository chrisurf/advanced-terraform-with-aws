locals {
  env = var.env == "" ? terraform.workspace : var.env
  return = var.ignore != local.env ? (lower(var.file_extention) == "json" ?
    jsondecode(file("${var.path}${var.prefix}${local.env}${var.suffix}.json"))
  : yamldecode(file("${var.path}${var.prefix}${local.env}${var.suffix}.${var.file_extention}"))) : {}
}
