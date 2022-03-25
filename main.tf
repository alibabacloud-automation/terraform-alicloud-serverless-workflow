locals {
  flow_name = var.flow_name != "" ? var.flow_name : concat(alicloud_fnf_flow.flow.*.name, [""])[0]
}


resource "alicloud_fnf_flow" "flow" {
  count       = var.create_flow ? 1 : 0
  definition  = var.definition
  description = var.flow_description
  name        = var.flow_name
  type        = var.flow_type
}

resource "alicloud_fnf_execution" "execution" {
  count          = var.create_execution ? 1 : 0
  execution_name = var.execution_name
  flow_name      = local.flow_name
  input          = var.input
  status         = var.execution_status
}

resource "alicloud_fnf_schedule" "schedule" {
  count           = var.create_schedule ? 1 : 0
  cron_expression = var.cron_expression
  flow_name       = local.flow_name
  schedule_name   = var.schedule_name
  description     = var.schedule_description
  payload         = var.payload
  enable          = var.schedule_enable
}