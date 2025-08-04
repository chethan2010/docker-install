resource "aws_instance" "db" {
    ami ="ami-09c813fb71547fc4f"
    vpc_security_group_ids = var.security_group_ids
    instance_type = var.instance_type
    user_data=file("docker.sh")

    tags = {
        Name = "db"
    }
}
