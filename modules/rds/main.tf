resource "aws_db_subnet_group" "cloudnorth_db_subnet_group" {
  name       = "cloudnorth-db-subnet-group"
  subnet_ids = var.db_subnet_ids

  tags = {
    Name = "cloudnorth-db-subnet-group"
  }
}

resource "aws_db_instance" "cloudnorth_db_instance" {
  allocated_storage      = 20
  engine                 = "mysql"
  instance_class         = "db.t3.micro"
  db_name                   = var.db_name
  username               = var.db_username
  password               = var.db_password
  vpc_security_group_ids = [var.db_sg_id]
  db_subnet_group_name   = aws_db_subnet_group.cloudnorth_db_subnet_group.name
  skip_final_snapshot    = true
  publicly_accessible    = false

  tags = {
    Name = "cloudnorth-db-instance"
  }
}