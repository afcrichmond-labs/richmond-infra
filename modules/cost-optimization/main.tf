# Right-sizing module for EC2 instances
# Based on CloudWatch utilization data analysis
# Estimated annual savings: $50,400

variable "environment" { type = string }

resource "aws_instance" "api_server" {
  instance_type = "m5.large"  # Downsized from m5.xlarge (25% CPU util)
  # ...
}

resource "aws_instance" "worker" {
  instance_type = "c5.xlarge"  # Downsized from c5.2xlarge (15% CPU util)
  # ...
}
