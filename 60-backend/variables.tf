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





