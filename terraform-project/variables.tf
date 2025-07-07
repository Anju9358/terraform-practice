variable "bucket_name" {
	default = "terraform-new-bucket-ab"
	description = "this bucket is created automatically by terraform"
}

#when we want to give different names to our servers we can make a list like this and use it in ec2 instance script:)
variable "instance_name" {
	default = ["master-server", "server1", "server2"]
}
