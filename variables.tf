variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "ami is join devops"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "instance size"

    validation {
        condition = contains(["t3.micro", "t3.small"], var.instance_type)
        error_message = "Invalid access, it may be t3-micro or t3.small."
  }
}

variable "sg_ids" {
    type = list

}

variable "tags" {
    type = map
}