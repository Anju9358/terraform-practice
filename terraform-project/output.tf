output "instance_public_ip" {
	description = "Please show public IP's of newly created servers"
	value = [for instance in aws_instance.terra_server : instance.public_ip]
}
