    variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f" #optional
    description = "Ec2" #optional
    }

    variable "instance_type" {
        default = "t3.micro"
        type =  string
      
    }

    variable "security_group_ids" {
    type = list
    default = ["sg-0e1628eed4bd446a7"] #replace with your SG ID.
    }

   