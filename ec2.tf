resource "aws_instance" "db" {
    ami ="ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"
    user_data=file("docker.sh")

    tags = {
        Name = "db"
    }
}
