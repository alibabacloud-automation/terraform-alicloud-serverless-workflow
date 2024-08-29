provider "alicloud" {
  region = "cn-shanghai"
}

module "fnf" {
  source = "../.."
  #  alicloud_fnf_flow
  create_flow      = true
  flow_type        = var.flow_type
  flow_name        = "flow_name"
  flow_description = var.flow_description
  definition       = var.definition

  #alicloud_fnf_schedule
  create_schedule      = true
  cron_expression      = var.cron_expression
  schedule_name        = "module_schedule_name"
  payload              = var.payload
  schedule_description = var.schedule_description

  #  alicloud_fnf_execution
  create_execution = true
  execution_name   = "module_execution_name"
  input            = jsonencode({ "wait" = 10 })
}