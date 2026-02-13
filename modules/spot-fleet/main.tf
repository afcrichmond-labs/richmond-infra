# Spot instance configuration for non-critical workloads
# Analytics workers and CI runners

resource "aws_spot_fleet_request" "analytics_workers" {
  target_capacity = 3
  spot_price = "0.10"
  
  launch_specification {
    instance_type = "c5.xlarge"
    ami = var.worker_ami
    
    tag_specifications {
      resource_type = "instance"
      tags = { Name = "analytics-worker-spot" }
    }
  }
  
  # Graceful handling for spot interruptions
  terminate_instances_with_expiration = true
}
