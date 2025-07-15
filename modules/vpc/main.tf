resource "aws_vpc" "cloudnorth-vpc" {
  cidr_block           = var.vpc_cidr  # <-- EDIT HERE if needed
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name    = "cloudnorth-vpc"
    Project = "CloudNorth"
  }
}

resource "aws_subnet" "frontend_subnet" {
  vpc_id            = aws_vpc.cloudnorth-vpc.id
  cidr_block        = var.frontend_subnet_cidr  # <-- EDIT HERE
  availability_zone = var.frontend_az           # <-- EDIT HERE if needed
  map_public_ip_on_launch = true

  tags = {
    Name    = "cloudnorth-frontend-subnet"
    Project = "CloudNorth"
  }
}

resource "aws_subnet" "backend_subnet" {
  vpc_id            = aws_vpc.cloudnorth-vpc.id
  cidr_block        = var.backend_subnet_cidr  # <-- EDIT HERE
  availability_zone = var.backend_az            # <-- EDIT HERE if needed
  map_public_ip_on_launch = true
  
  tags = {
    Name    = "cloudnorth-backend-subnet"
    Project = "CloudNorth"
  }
}

resource "aws_internet_gateway" "cloudnorth_igw" {
  vpc_id = aws_vpc.cloudnorth-vpc.id

  tags = {
    Name = "cloudnorth-igw"
  }
}

resource "aws_route_table" "cloudnorth_public_rt" {
  vpc_id = aws_vpc.cloudnorth-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cloudnorth_igw.id
  }

  tags = {
    Name = "cloudnorth-public-rt"
  }
}

resource "aws_route_table_association" "frontend_assoc" {
  subnet_id      = aws_subnet.frontend_subnet.id
  route_table_id = aws_route_table.cloudnorth_public_rt.id
}

resource "aws_route_table_association" "backend_assoc" {
  subnet_id      = aws_subnet.backend_subnet.id
  route_table_id = aws_route_table.cloudnorth_public_rt.id
}