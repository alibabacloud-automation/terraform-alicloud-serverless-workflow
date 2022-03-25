# terraform-alicloud-serverless-workflow
Terraform Module for creating Serverless Workflow resources on Alibaba Cloud.

These types of resources are supported:

* [alicloud_fnf_flow](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/fnf_flow)
* [alicloud_fnf_execution](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/fnf_execution)
* [alicloud_fnf_schedule](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/fnf_schedule)

## Usage

```hcl
module "example" {
  source      = "terraform-alicloud-modules/serverless-workflow/alicloud"
  description = "your_description"
  name        = "your_name"
  type        = "DEFAULT"

  execution_name = "your_execution_name"
  flow_name      = "your_flow_name"
  input          = "your_input"
  status         = "your_status"

  cron_expression = "your_cron_expression"
  schedule_name   = "your_schedule_name"
  payload         = "your_payload"
}
```

## Examples

* [complete example](https://github.com/terraform-alicloud-modules/serverless-workflow/tree/main/examples/complete)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.149.0 |

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)