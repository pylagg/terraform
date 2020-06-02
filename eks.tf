resource "aws_eks_cluster" "cluster" {
  name     = "hextris_cluster"
  role_arn = "${data.aws_iam_role.role.arn}"
  vpc_config {   
    subnet_ids = "${data.aws_subnet_ids.subnet.ids}"     
  }
}
