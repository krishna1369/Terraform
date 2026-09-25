variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "ami_id" {
  type        = string
  description = "AMI ID"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "subnet_id" {
  type        = string
  description = "Private subnet ID"
}

variable "security_group_ids" {
  type        = list(string)
  description = "Security group IDs"
}

variable "key_name" {
  type        = string
  description = "EC2 key pair"
  default     = null
}

variable "iam_instance_profile" {
  type        = string
  description = "IAM instance profile"
  default     = null
}
