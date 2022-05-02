#count variable
item_count              = 2

#vpc variables
vpc_cidr                = "10.0.0.0/16"
availability_zone_names = ["us-east-1a", "us-east-1b"]
web_subnet_cidr         = ["10.0.1.0/24", "10.0.2.0/24"]
application_subnet_cidr = ["10.0.11.0/24", "10.0.12.0/24"]
database_subnet_cidr    = ["10.0.21.0/24", "10.0.22.0/24"]

#instance variables
ami_id                  = "ami-0d5eff06f840b45e9"
instance_type           = "t2.micro"

#database variables
rds_instance = {
  allocated_storage   = 10
  engine              = "mysql"
  engine_version      = "8.0.20"
  instance_class      = "db.t2.micro"
  multi_az            = false
  name                = "mydb"
  skip_final_snapshot = true
}

#database sensitive variables
user_information = {
  username = "username"
  password = "password"
}

#region variable
region = "us-east-1"

#web layer route table variable
cidr_block = "0.0.0.0/0"

#Application Load Balancer
load_balancer_type = "application"
port               = 80
protocol           = "HTTP"
