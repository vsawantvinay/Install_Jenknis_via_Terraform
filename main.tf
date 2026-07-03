provider "aws" {

  region = "ap-south-1"

}

 

resource "aws_instance" "jenkins-vm" {

  ami = "ami-05d2d839d4f73aafb"

  instance_type = "c7i-flex.large"

  key_name = "private-laptop-home"

  user_data = file("install.sh")

  root_block_device {

  volume_size = 40

  delete_on_termination = true

  }

 

  tags = {

    Name = "jenkins-server"

  }

}
