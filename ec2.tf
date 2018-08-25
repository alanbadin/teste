provider "aws" {
	region 		= "us-east-1"
	access_key 	= "AKIAJV3SOW3DBRD3PX3Q"
	secret_key 	= "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"
}

resource "aws_instance" "web2" {
	ami 			= "ami-c58c1dd3"
	instance_type 	= "t2.micro"
	key_name		= "test"
	associate_public_ip_address = "true"
	tags {
		Name = "Terraform EC2"
	}
}