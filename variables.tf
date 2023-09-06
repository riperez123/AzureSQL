variable "admin_username" {
  type        = string
  description = "SQL admin username"
  default     = "SQLAdmin"
}

variable "admin_password" {
  type        = string
  description = " SQL Admin password for authentication"
  sensitive   = true
  default     = "YourSuperSecretPassword"
}

variable "rg_name" {
  type        = string
  description = "Resource Group name"
  default     = "SQLTest"
}

variable "rg_location" {
  type        = string
  description = "Resource Group region location"
  default     = "eastus"
}

variable "sql_server" {
  type        = string
  description = "SQL Server name, must be unique"
  default     = "UniqueName"
}

variable "sql_db" {
  type        = string
  description = "SQL DB name, must be unique"
  default     = "UniqueName"
}
