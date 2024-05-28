# create route table and add public route
resource "aws_route_table" "public_route_table" {
  vpc_id           = var.vpc_id
  propagating_vgws = []

  tags = {
    Name = "${var.project_name}-public-rt"
  }

  timeouts {}
}

# create route table and add public route
resource "aws_route_table" "private_route_table" {
  vpc_id           = var.vpc_id
  propagating_vgws = []

  tags = {
    Name = "${var.project_name}-private-rt"
  }

  timeouts {}
}
