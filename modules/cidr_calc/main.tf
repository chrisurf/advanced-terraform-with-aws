locals {
  # cfg = yamldecode(file("test.yaml"))


  # Use case
  # Inputs
  no_subnets      = var.no_subnets
  target_notation = var.target_notation

  # zones          = ["a", "b", "c"] 


  # Mapping 

  cidr_block = var.cidr_block


  # Processing

  cidr          = split("/", local.cidr_block)
  cidr_notation = tonumber(element(local.cidr, 1))
  count_item    = local.rule_count[(local.cidr_notation - 1)]
  count         = local.rule_count[(local.cidr_notation - 1)][tonumber(element(keys(local.rule_count[(local.cidr_notation - 1)]), 0))]
  hosts_subnet  = local.count / local.no_subnets
  array         = tolist(range(0, (local.no_subnets > 1024 ? 1024 : local.no_subnets))) # Error: more than 1024 values were generated; either decrease the difference between start and end or use a smaller step.

  infra_array = tolist(range(0, 1024))
  dev_array   = tolist(range(1024, 2048))
  int_array   = tolist(range(2048, 3072))
  prod_array  = tolist(range(3072, 4096))

  subnet_mask_notation = local.cidr_notation + (log(local.no_subnets, 2))
  mask                 = "${element(local.cidr, 0)}/${local.subnet_mask_notation}"
  subnet_mask_mask     = "${cidrnetmask(local.mask)}/${local.subnet_mask_notation}"


  # map subnet list to environment 
  subnet_map = local.infra_subnets

  # subnets = [for net in local.array : { "${net + 1}" = cidrhost(local.cidr_block, (local.hosts_subnet * (net + 1)) - local.hosts_subnet)} ]
  # subnets = [for net in local.array : cidrhost(local.cidr_block, (local.hosts_subnet * (net + 1)) - local.hosts_subnet)]

  subnets = {
    infra = [for net in local.infra_array : cidrhost(local.cidr_block, (local.hosts_subnet * (net + 1)) - local.hosts_subnet)]
    dev   = [for net in local.dev_array : cidrhost(local.cidr_block, (local.hosts_subnet * (net + 1)) - local.hosts_subnet)]
    int   = [for net in local.int_array : cidrhost(local.cidr_block, (local.hosts_subnet * (net + 1)) - local.hosts_subnet)]
    prod  = [for net in local.prod_array : cidrhost(local.cidr_block, (local.hosts_subnet * (net + 1)) - local.hosts_subnet)]
  }

  infra_subnets = [for net in local.infra_array : cidrhost(local.cidr_block, (local.hosts_subnet * (net + 1)) - local.hosts_subnet)]
  dev_subnets   = [for net in local.dev_array : cidrhost(local.cidr_block, (local.hosts_subnet * (net + 1)) - local.hosts_subnet)]
  int_subnets   = [for net in local.int_array : cidrhost(local.cidr_block, (local.hosts_subnet * (net + 1)) - local.hosts_subnet)]
  prod_subnets  = [for net in local.prod_array : cidrhost(local.cidr_block, (local.hosts_subnet * (net + 1)) - local.hosts_subnet)]


  #  nets     = pow(2, local.cidr_notation - element(split("/", local.cidr_block), 1))
  net_sizes = [for _ in range(local.cidr_notation) : pow(2, local.cidr_notation - element(split("/", local.cidr_block), 1))] # [16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16]
  #  az_names     = [for az in local.zones : { "${local.cfg.spec.project}-az-${local.cfg.spec.env}-${local.cfg.spec.region}${az}" = local.subnets[index(local.zones, az)] }]
}

locals {
  # IPv4 rules
  rule_count = [
    { "1" = 2147483648 },
    { "2" = 1073741824 },
    { "3" = 536870912 },
    { "4" = 268435456 },
    { "5" = 134217728 },
    { "6" = 67108864 },
    { "7" = 33554432 },
    { "8" = 16777216 },
    { "9" = 8388608 },
    { "10" = 4194304 },
    { "11" = 2097152 },
    { "12" = 1048576 },
    { "13" = 524288 },
    { "14" = 262144 },
    { "15" = 131072 },
    { "16" = 65536 },
    { "17" = 32768 },
    { "18" = 16384 },
    { "19" = 8192 },
    { "20" = 4096 },
    { "21" = 2048 },
    { "22" = 1024 },
    { "23" = 512 },
    { "24" = 256 },
    { "25" = 128 },
    { "26" = 64 },
    { "27" = 32 },
    { "28" = 16 },
    { "29" = 8 },
    { "30" = 4 },
    { "31" = 2 },
    { "32" = 1 }
  ]
}



