resource "aws_instance" "web" {
  ami             = "ami-053b0d53c279acc90"
  instance_type   = "t2.micro"
  count           = 5
  key_name        = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "Consul-${count.index}"
  }
}
