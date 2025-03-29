variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in Azure where resources will be deployed"
}

variable "resource_group_location" {
  type        = string
  description = "The Azure region where the resource group and resources will be created (e.g., 'eastus', 'westus')"
  default     = "eastus" # Optional default value
}

variable "app_service_plan_name" {
  type        = string
  description = "The name of the App Service Plan for hosting the web app"
}

variable "app_service_name" {
  type        = string
  description = "The name of the App Service (web app) to be deployed"
}

variable "sql_server_name" {
  type        = string
  description = "The name of the Azure SQL Server instance"
}

variable "sql_database_name" {
  type        = string
  description = "The name of the SQL database to be created within the SQL Server"
}

variable "sql_admin_login" {
  type        = string
  description = "The administrator username for the SQL Server"
  # Avoid hardcoding sensitive defaults in production; this is just an example
  default = "sqladmin" # Optional default value
}

variable "sql_admin_password" {
  type        = string
  description = "The administrator password for the SQL Server"
  sensitive   = true # Mark as sensitive to avoid displaying in logs/output
  # No default value for security reasons; should be provided securely (e.g., via TF_VAR or secrets manager)
}

variable "firewall_rule_name" {
  type        = string
  description = "The name of the firewall rule for the SQL Server"
  default     = "allow-azure-services" # Optional default value
}

variable "github_repo_url" {
  type        = string
  description = "The URL of the GitHub repository containing the web app source code"
}