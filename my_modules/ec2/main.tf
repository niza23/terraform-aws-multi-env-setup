# Get latest Amazon Linux 2 AMI
data "aws_ami" "linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# Create EC2 instances
resource "aws_instance" "this" {
  count         = var.instance_count
  ami           = var.ami_id != "" ? var.ami_id : data.aws_ami.linux.id
  instance_type = var.instance_type

  root_block_device {
    volume_size = var.root_volume_size
  }

  tags = merge(
    var.tags,
    { Name = "${var.name_prefix}-${count.index + 1}" }
  )
}

