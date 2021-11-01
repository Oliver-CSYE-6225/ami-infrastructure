variable "aws_profile" {
  type        = string
  description = "AWS Profile"
}

variable "vpc_name" {
  type        = string
  description = "VPC NAME"
}

variable "vpc_cidr_block" {
  type        = string
  description = "VPC CIDR Block"
}

variable "subnet_name_p1" {
  type        = string
  description = "FIRST PART OF SUBNET NAME"
}

variable "igw_name" {
  type        = string
  description = "INTERNET GATEWAY NAME"
}

variable "route_table_name" {
  type        = string
  description = "ROUTE TABLE NAME"
}

variable "internet_cidr_block_ipv4" {
  type        = string
  description = "CIDR BLOCK FOR WORLD WIDE WEB IPV4"
}

variable "internet_cidr_block_ipv6" {
  type        = string
  description = "CIDR BLOCK FOR WORLD WIDE WEB IPV6"
}

variable "subnet_cidr_az_map" {
  type        = map(any)
  description = "Mapping availability to zone to subnet cidrs"
}

variable "subnet_cidr_association_map" {
  type        = map(any)
  description = "Mapping availability to zone to subnet cidrs"
}

variable "app_security_group_ports" {
  type        = list(number)
  description = "List of Application Security Group Ports"
}

variable "rds_subnet_zone1" {
  type        = string
  description = "Subnet zone 1 to deploy rds"
}

variable "rds_subnet_zone2" {
  type        = string
  description = "Subnet zone 2 to deploy rds"
}

variable "rds_subnet_zone3" {
  type        = string
  description = "Subnet zone 2 to deploy rds"
}

variable "rds_subnet_zone4" {
  type        = string
  description = "Subnet zone 2 to deploy rds"
}

variable "database_username" {
  type        = string
  description = "Database Url"
}

variable "database_password" {
  type        = string
  description = "Subnet zone 2 to deploy rds"
}

variable "s3_bucket_suffix" {
  type        = string
  description = "Subnet zone 2 to deploy rds"
}

variable "db_port" {
  type        = number
  description = "Database port"
}

variable "db_host_str_p1" {
  type        = string
  description = "Database host string part 1"
}

variable "app_security_group_description" {
  type = string
}

variable "protocol_tcp" {
  type = string
}

variable "app_security_group_name" {
  type = string
}

variable "app_security_group_desc" {
  type = string
}

variable "db_security_group_name" {
  type = string
}

variable "db_security_group_desc" {
  type = string
}

variable "db_security_group_description" {
  type = string
}

variable "s3_bucket_permission" {
  type = string
}

variable "default_encrypt_algo_s3" {
  type = string
}

variable "s3_lifecycle_transition_days" {
  type = string
}

variable "s3_lifecycle_storage_class" {
  type = string
}

variable "db_pm_group_name" {
  type = string
}

variable "db_pm_group_family" {
  type = string
}

variable "db_subnet_group_name" {
  type = string
}

variable "db_instance_engine" {
  type = string
}

variable "db_instance_engine_version" {
  type = string
}

variable "db_instance_class" {
  type = string
}

variable "database_name" {
  type = string
}

variable "db_allocated_storage" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "ec2_instance_type" {
  type = string
}

variable "ebs_block_type" {
  type = string
}

variable "ebs_volume_size" {
  type = string
}

variable "ec2_key_name" {
  type = string
}

variable "s3_policy_name" {
  type = string
}

variable "s3_policy_description" {
  type = string
}

variable "iam_role_s3_name" {
  type = string
}

variable "iam_instance_profile_name" {
  type = string
}

variable "s3_artifact_upload_policy_name" {
  type        = string
  description = "S3 artifact upload policy"
}

variable "s3_artifact_upload_description" {
  type        = string
  description = "S3 artifact upload policy description"
}

variable "gh_actions_role_name" {
  type        = string
  description = "Name of github actions role"
}

variable "ghactions_codedeploy_policy_name" {
  type        = string
  description = "GHactions code deploy policy name"
}

variable "ghactions_codedeploy_policy_description" {
  type        = string
  description = "GH actions codeploy policy description"
}

variable "aws_region" {
  type        = string
  description = "AWS Region name"
}

variable "aws_account_id" {
  type        = number
  description = "Account ID number of AWS Account"
}

variable "codedeploy_application_name" {
  type        = string
  description = "Codedeploy Application name"
}

variable "codedeploy_deployment_group" {
  type        = string
  description = "Deployment Group in Codedeploy Application"
}

variable "artifact_s3_arn" {
  type        = string
  description = "ARN number of S3 Bucket that stores artifacts"
}

variable "ec2_codedeploy_policy_name" {
  type        = string
  description = "EC2 codedeploy policy name"
}
variable "ec2_codedeploy_policy_name_description" {
  type        = string
  description = "EC2 codedeploy policy description"
  default     = "Customer Managed Policy to provide permissions to EC2 instances to access Code Deploy"
}