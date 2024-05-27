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

resource "aws_route" "private_nat_route" {
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = var.nat_gateway.id
}
