variable "ami" {
    type = string
    default = "ami-xyz, AMI-ABC, ami-efg"
    description = "A string containig ami ids"
}

variable "mao" {
    type = map
    default = {
    "us-east-1" = "ami-xyz",
     "ca-central-1" = "AMI-ABC",
     "ap-south-1" = "ami-efg"
    }
    description = "A string containig ami ids"
}

variable "num" {
    type = set(number)
    default = [ 250, 10, 11, 5 ]
    description = "A set of numbers"
}