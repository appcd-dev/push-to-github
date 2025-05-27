data "aws_availability_zones" "this" {

  all_availability_zones = var.all_availability_zones
  exclude_names          = var.exclude_names
  exclude_zone_ids       = var.exclude_zone_ids
  state                  = var.state
}
