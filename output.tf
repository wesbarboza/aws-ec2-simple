output "instance_public_ips" {
  value = tolist(aws_instance.web[*].public_ip)
  description = "Public IP addresses of the EC2 instances"
}
