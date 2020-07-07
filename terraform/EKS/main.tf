resource "aws_iam_role" "eks_role" {
  name = "eks_role"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.eks_role.name
}

resource "aws_iam_role_policy_attachment" "AmazonEKSServicePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
  role       = aws_iam_role.eks_role.name
}

resource "aws_eks_cluster" "t3_eks" {
  name     = "t3_eks"
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    security_group_ids = var.sg
    subnet_ids = var.subnets
    endpoint_private_access = false
    endpoint_public_access = true
    public_access_cidrs = ["0.0.0.0/0"]
  }

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.AmazonEKSServicePolicy,
  ]
}

resource "aws_eks_node_group" "t3_nodegroup" {
  cluster_name    = aws_eks_cluster.t3_eks.name
  node_group_name = "t3_nodegroup"
  node_role_arn   = aws_iam_role.t3_nodesrole.arn
  subnet_ids      = var.subnets

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.EKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.EKS_CNI_Policy,
    aws_iam_role_policy_attachment.EC2ContainerRegistryReadOnly,
  ]
}

resource "aws_iam_role" "t3_nodesrole" {
  name = "t3_nodesrole"

  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}

resource "aws_iam_role_policy_attachment" "EKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = aws_iam_role.t3_nodesrole.name
}

resource "aws_iam_role_policy_attachment" "EKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = aws_iam_role.t3_nodesrole.name
}

resource "aws_iam_role_policy_attachment" "EC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = aws_iam_role.t3_nodesrole.name
}

#resource "aws_iam_role_policy_attachment" "AmazonEC2FullAccess" {
 # policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  #role       = aws_iam_role.t3_nodesrole.name
#}