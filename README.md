# ECS VM instance

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.4 |
| <a name="requirement_huaweicloud"></a> [huaweicloud](#requirement\_huaweicloud) | ~>1.47 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_huaweicloud"></a> [huaweicloud](#provider\_huaweicloud) | ~>1.47 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [huaweicloud_compute_eip_associate.ecs_associated](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/compute_eip_associate) | resource |
| [huaweicloud_compute_instance.main](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/compute_instance) | resource |
| [huaweicloud_availability_zones.zones](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/data-sources/availability_zones) | data source |
| [huaweicloud_images_image.compute_instance_image](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/data-sources/images_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agency_name"></a> [agency\_name](#input\_agency\_name) | Specifies the IAM agency name which is created on IAM to provide temporary credentials for ECS to access cloud services | `string` | `null` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Specifies the availability zone in which to create the instance | `string` | `null` | no |
| <a name="input_data_disks"></a> [data\_disks](#input\_data\_disks) | Specifies the EVS Volumes and parameters:<br><br>  * `type` - Specifies the ECS data disk type, which must be one of available disk types, contains of SSD, GPSSD and SAS;<br>  * `size` - Specifies the data disk size, in GB. The value ranges form 10 to 32768;<br>  * `snapshot_id` - Specifies the snapshot id;<br>  * `kms_key_id` - Specifies the ID of a KMS key, this is used to encrypt the disk. | <pre>list(object({<br>    volume_type = optional(string, "SSD")<br>    size        = optional(number, 40)<br>    snapshot_id = optional(string)<br>    kms_key_id  = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_data_disks1"></a> [data\_disks1](#input\_data\_disks1) | Specifies the ECS data disks and parameters | <pre>list(object({<br>    type = string<br>    size = number<br>  }))</pre> | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | Specifies the description of the instance | `string` | `null` | no |
| <a name="input_eip_address"></a> [eip\_address](#input\_eip\_address) | Specifies the EIP address to associate | `string` | `null` | no |
| <a name="input_eip_enabled"></a> [eip\_enabled](#input\_eip\_enabled) | Enabler for EIP | `bool` | `false` | no |
| <a name="input_flavor_name"></a> [flavor\_name](#input\_flavor\_name) | Specifies the name of the desired flavor for the instance | `string` | `"s7n.medium.2"` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | Specifies the image ID of the desired image for the instance | `string` | `null` | no |
| <a name="input_instance_image"></a> [instance\_image](#input\_instance\_image) | Requirements for Compute Instance Image | <pre>object({<br>    name         = optional(string, "Ubuntu 22.04 server 64bit")<br>    visibility   = optional(string, "public")<br>    architecture = optional(string, "x86")<br>    most_recent  = optional(bool, true)<br>  })</pre> | `{}` | no |
| <a name="input_key_pair"></a> [key\_pair](#input\_key\_pair) | Specifies the SSH keypair name used for logging in to the instance | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the ECS VM instance | `string` | n/a | yes |
| <a name="input_name_postfix"></a> [name\_postfix](#input\_name\_postfix) | Name Postfix for ECS VM instance | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | Specifies the region in which to create the resource. If omitted, the provider-level region will be used | `string` | `null` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | Specifies an array of one or more security group IDs to associate with the instance | `list(string)` | `[]` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | VPC Subnet ID in UUID format | `string` | n/a | yes |
| <a name="input_system_disk_size"></a> [system\_disk\_size](#input\_system\_disk\_size) | Specifies the system disk size in GB | `number` | `40` | no |
| <a name="input_system_disk_type"></a> [system\_disk\_type](#input\_system\_disk\_type) | Specifies the system disk type of the instance:<br><br>  * `SAS`: high I/O disk type;<br>  * `SSD`: ultra-high I/O disk type;<br>  * `GPSSD`: general purpose SSD disk type;<br>  * `ESSD`: Extreme SSD type. | `string` | `"GPSSD"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Specifies the key/value pairs to associate with the VPC | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ip"></a> [ip](#output\_ip) | Compute Instance Private IP |
<!-- END_TF_DOCS -->