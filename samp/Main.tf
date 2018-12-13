provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
  
}

resource "aws_instance" "example" {
  count = "${var.count}"
  ami = "ami-0f9cf087c1f27d9b1"
  instance_type = "${var.instance_type}"
  availability_zone = "${element(var.azs, count.index)}"
  tags{
    Name = "${var.Name}-${count.index}"
  }

}