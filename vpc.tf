resource "aws_vpc" "group4" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.group4.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.group4.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-2"
  }
}

resource "aws_subnet" "subnet3" {
  vpc_id                  = aws_vpc.group4.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-3"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.group4.id

  tags = {
    Name = "group4"
  }
}

resource "aws_route_table" "example" {
  vpc_id = aws_vpc.group4.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "group4"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.example.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.example.id
}
resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.subnet3.id
  route_table_id = aws_route_table.example.id
}
