resource "aws_key_pair" "deployer" {
  key_name   = var.key_pair_name
  public_key = file("${path.module}/id_rsa.pub")
}

# Define webserver inside the public subnet
resource "aws_instance" "my-instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.deployer.key_name
  subnet_id                   = "${aws_subnet.public_subnet.id}"
  vpc_security_group_ids      = ["${aws_security_group.my_sg.id}"]
  associate_public_ip_address = true
  source_dest_check           = false
  user_data                   = "${file("userdata.sh")}"

  tags = {
    Name = var.web_instance_name
  }
}

# Define database inside the private subnet
resource "aws_instance" "db" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.deployer.key_name
  subnet_id              = "${aws_subnet.private_subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.my_db_sg.id}"]
  source_dest_check      = false

  tags = {
    Name = var.db_instance_name
  }
}