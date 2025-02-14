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
    default = "Z081269113O3DYPRH684B"
}

variable "domain_name" {
    default = "daws82s.fun"
}


