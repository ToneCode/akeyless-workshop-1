variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = ""
}

variable "cluster_version" {
  description = "Version of the EKS cluster"
  type        = string
  default     = "1.29"
}

locals {
  cluster_name = var.cluster_name == "" ? "workshop-1-${random_string.suffix.result}" : var.cluster_name
}