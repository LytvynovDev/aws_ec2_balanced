data "aws_subnets" "this" {
  filter {
    name   = "vpc-id"
    values = [var.aws_vpc_id]
  }
}
