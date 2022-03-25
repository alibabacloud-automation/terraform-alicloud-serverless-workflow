variable "create_flow" {
  type = bool
  description = "Whether to create the alicloud_fnf_flow"
  default = false
}

variable "create_execution" {
  type = bool
  description = "Whether to create the alicloud_fnf_execution"
  default = false
}

variable "create_schedule" {
  type = bool
  description = "Whether to create the alicloud_fnf_schedule"
  default = false
}

#alicloud_fnf_flow
variable "definition" {
  type = string
  description = "The definition of the flow. It must comply with the Flow Definition Language (FDL) syntax."
  default = ""
}

variable "flow_description" {
  type = string
  description = "The description of the flow."
  default = ""
}

variable "flow_name" {
  type = string
  description = "The name of the flow. The name must be unique in an Alibaba Cloud account."
  default = ""
}

variable "flow_type" {
  type  = string
  description = "The type of the flow. Valid values are FDL or DEFAULT."
  default = "DEFAULT"
}

variable "role_arn" {
  type = string
  description = "The ARN of the specified RAM role that Serverless Workflow uses to assume the role when Serverless Workflow executes a flow."
  default = ""
}

#alicloud_fnf_execution

variable "execution_name" {
  type = string
  description = "The name of the execution."
  default = ""
}

variable "input" {
  type = string
  description = "The Input information for this execution."
  default = ""
}

variable "execution_status" {
  type = string
  description = "TThe status of the resource. Valid values: `Stopped`"
  default = null
}


#alicloud_fnf_schedule
variable "cron_expression" {
  type = string
  description = "The CRON expression of the time-based schedule to be created."
  default = ""
}

variable "schedule_name" {
  type = string
  description = "The name of the time-based schedule to be created."
  default = ""
}

variable "schedule_description" {
  type = string
  description = "The description of the time-based schedule to be created."
  default = ""
}

variable "schedule_enable" {
  type = bool
  description = "Specifies whether to enable the time-based schedule you want to create. Valid values: false, true."
  default = null
}

variable "payload" {
  type = string
  description = "The trigger message of the time-based schedule to be created. It must be in JSON object format."
  default = ""
}


