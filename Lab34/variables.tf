variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "home_ip" {
  description = "Your home IP address in CIDR notation"
  type        = string
  # Example: "123.45.67.89/32"
}
