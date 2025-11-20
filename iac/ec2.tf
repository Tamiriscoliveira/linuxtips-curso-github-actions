resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  variavel_inexistente = var.variavel_inexistente

  tags = {
    Name = "HelloWorld"
  }
}