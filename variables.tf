variable "admin_username" {
  type        = string
  description = "SQL admin username"
  default     = "SQLAdmin"
}

variable "admin_password" {
  type        = string
  description = " SQL Admin password for authentication"
  sensitive   = true
  default     = "Azure1!Azure1!"
}

variable "rg_name" {
  type        = string
  description = "Resource Group name"
  default     = "SQLTest"
}

variable "rg_location" {
  type        = string
  description = "Reource Group region location"
  default     = "eastus"
}

variable "sql_server" {
  type        = string
  description = "SQL Server name"
  default     = "rperezsqlserver01"
}

variable "sql_db" {
  type        = string
  description = "SQL DB name"
  default     = "rperezdb01"
}