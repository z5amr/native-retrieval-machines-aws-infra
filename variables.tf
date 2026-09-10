# ------------------------------------------------------------------------------
# Nutanix Provider Variables
# (Passed automatically via environment variables in GitHub Actions)
# ------------------------------------------------------------------------------

variable "nutanix_user" {
  type        = string
  description = "Username for the Nutanix Prism Central / NC2 management portal"
  sensitive   = true
  default     = null
}

variable "nutanix_password" {
  type        = string
  description = "Password for the Nutanix Prism Central / NC2 management portal"
  sensitive   = true
  default     = null
}

variable "nutanix_endpoint" {
  type        = string
  description = "Prism Central IP address or FQDN (e.g., https://prism.yourdomain.com:9440)"
  sensitive   = false
  default     = null
}

# ------------------------------------------------------------------------------
# AWS Infrastructure Variables
# ------------------------------------------------------------------------------

variable "aws_region" {
  type        = string
  description = "Target AWS Region where NC2 bare-metal instances are deployed"
  default     = "us-east-1"
}

variable "aws_vpc_id" {
  type        = string
  description = "The target AWS VPC ID hosting the Nutanix bare-metal nodes"
  default     = "vpc-0123456789abcdef0"
}

variable "aws_subnet_id" {
  type        = string
  description = "The target AWS Subnet ID for NC2 ENI attachments"
  default     = "subnet-0123456789abcdef0"
}

# ------------------------------------------------------------------------------
# Nutanix NC2 Workload Variables
# ------------------------------------------------------------------------------

variable "nc2_cluster_uuid" {
  type        = string
  description = "Target Nutanix NC2 Cluster UUID"
  default     = "00000000-0000-0000-0000-000000000000"
}

variable "nutanix_overlay_subnet_uuid" {
  type        = string
  description = "Nutanix Overlay or VLAN Subnet UUID where the VM NIC will be attached"
  default     = "00000000-0000-0000-0000-000000000000"
}

variable "ubuntu_image_uuid" {
  type        = string
  description = "UUID of the registered VM image in Nutanix Prism Central"
  default     = "00000000-0000-0000-0000-000000000000"
}