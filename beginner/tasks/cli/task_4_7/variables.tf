# TODO: Declare a variable named "bucket_suffix" with:
#   - type:        string
#   - description: "Suffix appended to the bucket name"
#   - default:     "default"

variable "bucket_suffix" {
  type        = string
  description = "Suffix appended to the bucket name"
  default     = "default"
}