output "flow_id" {
  description = "The Flow ID"
  value       = concat(alicloud_fnf_flow.flow.*.id, [""])[0]
}

output "execution_id" {
  description = "The Execution ID"
  value       = concat(alicloud_fnf_execution.execution.*.id, [""])[0]
}

output "alicloud_fnf_schedule" {
  description = "The Schedule ID"
  value       = concat(alicloud_fnf_schedule.schedule.*.id, [""])[0]
}


