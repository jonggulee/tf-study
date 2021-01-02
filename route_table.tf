resource "aws_route_table" "public" {
	vpc_id = aws_vpc.main.id
	
	tags = {
		Name = "terraform-101-rt-public"
	}
}
	
resource "aws_route_table" "private" {
	vpc_id = aws_vpc.main.id
	
	tags = {
		Name = "terraform-101-rt-private"
	}
}
