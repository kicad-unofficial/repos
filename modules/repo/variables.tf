variable "name" {
  description = "The repository name"
  type        = string
  nullable    = false
}

variable "description" {
  description = "The repository description"
  type        = string
  nullable    = false
}

variable "topics" {
  description = "A list of topics for the repository"
  type        = list(string)
  default     = []
}

variable "license" {
  description = "The type of LICENSE to publish"
  type        = string
  nullable    = false
}

variable "license_addendum" {
  description = "Additional text to append to the LICENSE file"
  type        = string
  default     = ""
}

variable "copyright" {
  description = "Information about the copyright notice to include in the LICENSE file"
  type = object({
    since   = string,
    holders = optional(list(string), [])
  })
  nullable = false
}
