variable name {
  type        = string
  description = "Bucket Name"
  default     = ""
}

variable encryption_enabled {
  type = bool
  default = true
}

variable encryption_type {
  type = string
  default = "AES256"
}

variable versioning {
  type        = bool
  default     = true
}

variable policy_enabled {
  type        = bool
  default     = false
}

variable inline_policy {
  type        = string
  default     = ""
}

variable public_access {
  type        = bool
  default     = false
}

variable environment {
  type        = string
  default     = ""
}







