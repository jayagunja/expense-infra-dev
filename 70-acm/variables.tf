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
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "domain_name" {
  type    = string
  default = "daws82s.fun"
}

variable "zone_id" {
  type        = string
  default     = "Z081269113O3DYPRH684B"
  description = "description"
}



