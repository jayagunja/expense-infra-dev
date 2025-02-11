variable "project_name" {
  type        = string
  default     = "expense"
  description = "description"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "description"
}

variable "common_tags" {
  default     = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
  }
}

variable "zone_id" {
  type        = string
  default     = "Z01002552DT90UT6ZCD34"
}

variable "domain_name" {
  type        = string
  default     = "daws82s.fun"
}




