resource "aws_eks_cluster" "myproject_cluster" {
  name     = "myproject-cluster"
  role_arn = aws_iam_role.myproject_role.arn

  vpc_config {
    subnet_ids = aws_subnet.myproject_subnet[*].id
  }
}

resource "aws_eks_node_group" "myproject_node_group" {
  cluster_name    = aws_eks_cluster.myproject_cluster.name
  node_group_name = "myproject-node-group"
  node_role_arn   = aws_iam_role.myproject_role.arn
  subnet_ids      = aws_subnet.myproject_subnet[*].id

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}
