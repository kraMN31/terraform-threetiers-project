# Create Database Private Subnet
resource "aws_subnet" "database-subnet" {
  count             = var.item_count
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.database_subnet_cidr[count.index]
  availability_zone = var.availability_zone_names[count.index]

  tags = {
    Name = "Database-${count.index}"
  }
}
