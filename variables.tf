variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

variable "instance_ami" {
  description = "Value of the ami for the EC2 instance"
  type        = string
  default     = "ami-04505e74c0741db8d"
}

variable "instance_type" {
  description = "Value of the instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Value of the instance type for the EC2 instance"
  type        = string
  default     = "aws_cloud"
}

variable "webServers" {
  description = "List of WebServers"
  type        = list
  default = [
    "web-1",
    "web-2",
    "web-3"
  ]
}