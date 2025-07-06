resource "aws_instance" "terra_server" {
	count = 1
	ami = "ami-0d1b5a8c13042c939"
	instance_type = "t2.micro"
	key_name = "Docker_key"
	tags = {
	Name = "terra_server"
	}
}
