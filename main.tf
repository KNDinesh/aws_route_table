# create route table and add public route
resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id
  propagating_vgws = []
  tags = {
    Name = "${var.project_name}-${var.type}-rt"
  }
}

resource "aws_route" "public_route" {
  route_table_id = aws_route_table.route_table.id
  gateway_id     = var.type == "public" ? module.nat_gateway.nat_gateway_id : var.internet_gateway_id
}
