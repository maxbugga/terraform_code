resource "aws_db_instance" "subbumysql" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "subburds"
  username             = "subbu"
  password             = "subbu123"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}