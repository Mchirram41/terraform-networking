# -------------------------
# DB SUBNET GROUP
# -------------------------
resource "aws_db_subnet_group" "this" {
  name       = "${var.identifier}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.identifier}-subnet-group"
  }
}

# -------------------------
# RDS INSTANCE
# -------------------------
resource "aws_db_instance" "this" {
  identifier = var.identifier

  engine         = var.engine
  engine_version = var.engine_version

  instance_class    = var.instance_class
  allocated_storage = var.allocated_storage

  db_name  = var.db_name
  username = var.username
  password = var.password

  multi_az = var.multi_az

  db_subnet_group_name = aws_db_subnet_group.this.name

  # 🔥 USING EXISTING SECURITY GROUP
  vpc_security_group_ids = [var.allowed_security_group_id]

  publicly_accessible = false

  backup_retention_period = 7
  storage_encrypted       = true

  skip_final_snapshot = true

  tags = merge(
    var.tags,
    {
      Name = "${var.resource_name}-database"
    }
  )
}