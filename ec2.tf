data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["IaaSWeek-${var.hash_commit}"]
  }

  owners = ["777015859311"] # My User
}

resource "aws_instance" "web" { 
  #count         = var.enviroment == production ? 2 + var.plus:1
  #count         = var.production ? 2 : 1
  #count.index   < 1 ? "t2.micro" : "t3.medium"
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
    Env  = var.environment
  }
}
