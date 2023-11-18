resource "aws_lightsail_instance" "example_instance" {
  name              = "centos"
  availability_zone = "us-east-1a" # Replace with your desired availability zone
  blueprint_id      = "amazon_linux_2" # Replace with the desired blueprint ID

  bundle_id = "nano_2_0" # Replace with the desired bundle ID

   user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y httpd
              sudo systemctl start httpd
              sudo systemctl enable httpd
              echo "<html><body><h1>Hello from Lightsail instance!</h1></body></html>" > /usr/share/nginx/html/index.html
              EOF