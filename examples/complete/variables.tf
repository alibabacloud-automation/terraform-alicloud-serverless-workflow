variable "flow_type" {
  type        = string
  description = "The type of the flow. Valid values are FDL or DEFAULT."
  default     = "FDL"
}

variable "flow_description" {
  type        = string
  description = "The description of the flow."
  default     = "flow_description_test"
}

variable "definition" {
  type        = string
  description = "The definition of the flow. It must comply with the Flow Definition Language (FDL) syntax."
  default     = "version: v1beta1\ntype: flow\nsteps:\n  - type: pass\n    name: helloworld"
}



variable "cron_expression" {
  type        = string
  description = "The CRON expression of the time-based schedule to be created."
  default     = "30 9 * * * *"
}


variable "payload" {
  type        = string
  description = "The trigger message of the time-based schedule to be created. It must be in JSON object format."
  default     = "{\"tf-testchange\": \"test success\"}"
}


variable "schedule_description" {
  type        = string
  description = "The description of the time-based schedule to be created."
  default     = "module_schedule_description"
}

variable "config_rule_ids" {
  type = list(object({
    config_rule_id = string
  }))
  description = ""
  default     = []
}