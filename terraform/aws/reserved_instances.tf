# ENG-57: AWS Reserved Instances — Finance approved 2026-02-24
resource "aws_reserved_instance" "api_servers" {
  instance_type  = "m6i.2xlarge"
  instance_count = 3
  offering_type  = "No Upfront"
}
