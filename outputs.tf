output "instance_id" {
  description = "ID of the EC2 instance"
  #value       = aws_instance.ansible-web-server.id
  value = tomap({
    for k, inst in aws_instance.ansible-web-server : k => inst.id
  })
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  #value       = aws_instance.ansible-web-server.public_ip
  value = tomap({
    for k, inst in aws_instance.ansible-web-server : k => inst.public_ip
  })
}
