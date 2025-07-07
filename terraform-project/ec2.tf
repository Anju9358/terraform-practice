resource "aws_instance" "terra_server" {
	count = 3
	ami = "ami-0d1b5a8c13042c939"
	instance_type = "t2.micro"
	key_name = "Docker_key"
	tags = {
	Name = var.instance_name[count.index] #when we wants to give different name to our servers
	}
}
