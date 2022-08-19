variable "vpc_name" {
  type        = string
  default     = "Lakshman"
  description = "Name for Vpc"
}


variable "cidr_block" {
  type        = string
  default     = "10.1.0.0/16"
  description = "cider block for vpc"
}
variable "env" {
  type        = string
  default     = "development"
  description = "Environmental Tag for vpc"
}


# variable "IGW_name" {
#   type        = string
#   default     = "testvpc01-IGW"
#   description = "Internet Gateway Tag for vpc"
# }


variable "public_subnet1_cidr" {
  type        = string
  default     = "10.1.1.0/24"
  description = "CIDR Block For Subnet-1"
}

variable "public_subnet2_cidr" {
  type        = string
  default     = "10.1.2.0/24"
  description = "CIDR Block For Subnet-2"
}


variable "public_subnet3_cidr" {
  type        = string
  default     = "10.1.3.0/24"
  description = "CIDR Block For Subnet-3"
}

variable "Public_Subnet-1_name" {
  type        = string
  default     = "testvpc01-subnet-1"
  description = "Name for subnet-1"
}

variable "Public_Subnet-2_name" {
  type        = string
  default     = "testvpc01-subnet-2"
  description = "Name for subnet-2"
}

variable "Public_Subnet-3_name" {
  type        = string
  default     = "testvpc01-subnet-3"
  description = "Name for subnet-3"
}