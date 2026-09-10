variable "aws_region" {
  description = "The AWS region to deploy infrastructure into."
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment tag for cost tracking and lifecycle management."
  type        = string
  default     = "project-demo"
}

variable "instance_type" {
  description = "EC2 instance size optimized for cost efficiency."
  type        = string
  default     = "t3.micro"
}

variable "instance_count" {
  description = "Number of EC2 instances."
  type        = number
  default     = 2
}