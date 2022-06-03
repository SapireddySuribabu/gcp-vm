variable "project_id" {
  type        = string
  description = "The project ID to manage vm"
  default     = "sailor-321711"
}
variable "service_account_id" {
  description = "Enter the service account id"
  type        = string
  default     = "surya12"
}
variable "Service_Account" {
  description = "Name of the service account"
  type        = string
  default     = "surya443"
}
variable "test" {
  description = "Name of the instance"
  type        = string
  default     = "surya"
}
variable "machine_type" {
  description = "machine type for the instance"
  type        = string
  default     = "e2-medium"
}
variable "zone" {
  description = "Name of the zone for the instance"
  type        = string
  default     = "asia-south1-a"
}
variable "image" {
  description = "Name of the selecting image with version"
  type        = string
  default     =  "ubuntu-os-cloud/ubuntu-2004-lts"
}
variable "interface" {
  description = "interface for the local ssd scratch disk"
  type        = string
  default     = "SCSI"
}
variable "google_service_account_default_email" {
  description = "service accounts that have cloud-platform scope and permissions granted via IAM Role"
  type        = string
  default     = "suribau@bootlabs.com"
}
