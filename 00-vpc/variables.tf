variable "project_name" {
  type    = string
  default = "expense"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "description"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "description"
}

variable "common_tags" {
  type = map(any)
  default = {
    Project     = "expense"
    environment = "dev"
    terraform   = "true"
  }

}

variable "vpc_tags" {
  type = map(any)
  default = {
    Purpose = "assignment"
  }

}

variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnet_cidrs" {
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}







