resource "aws_route_table" "public" {
	vpc_id = aws_vpc.main.id
	
	tags = {
		Name = "terraform-101-rt-public"
	}
}

resource "aws_route_table_association" "route_table_association_public" {
	subnet_id	= aws_subnet.public_subnet.id
	route_table_id	= aws_route_table.public.id
}

resource "aws_route_table" "private" {
	vpc_id = aws_vpc.main.id
	
	tags = {
		Name = "terraform-101-rt-private"
	}
}

resource "aws_route_table_association" "route_table_association_private" {
	subnet_id	= aws_subnet.private_subnet.id
	route_table_id	= aws_route_table.private.id
}
