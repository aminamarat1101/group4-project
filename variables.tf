variable "region" {
  default     = "us-east-2"
  type        = string
  description = "provide a region"
}

variable "port" {
  type    = list(any)
  default = [22, 80, 443]
}
variable "instance_type" {
  default = "t2.micro"
}