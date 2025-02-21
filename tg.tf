resource "aws_lb_target_group" "blue" {
  name     = "group4-blue"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.group4.id
  target_type = "instance"
}

resource "aws_lb_target_group" "green" {
  name     = "group4-green"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.group4.id
  target_type = "instance"
}

resource "aws_lb_target_group_attachment" "blue_instance" {
  target_group_arn = aws_lb_target_group.blue.arn
  target_id        = aws_instance.web1.id
  port            = 80
}

resource "aws_lb_target_group_attachment" "green_instance" {
  target_group_arn = aws_lb_target_group.green.arn
  target_id        = aws_instance.web2.id
  port            = 80
}
