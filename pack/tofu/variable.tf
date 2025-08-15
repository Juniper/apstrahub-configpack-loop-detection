#  Copyright (c) Juniper Networks, Inc., 2025-2025.
#  All rights reserved.
#  SPDX-License-Identifier: MIT

variable "blueprint_id" {
  type = string
}

variable "name" {
  type = string
  description = "Name: Please use only letters, numbers, - and _"
  validation {
    condition     = !can(regex("[^A-Za-z0-9_-]", var.name))
    error_message = "The name must only have letters, numbers, - and _"
  }
  default = "Loop_Detection"
}
