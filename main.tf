resource "aws_iam_policy" "gh-ec2-ami" {
  name        = "gh-ec2-ami"
  description = "gh-ec2-ami"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "ec2:DetachVolume",
                "ec2:AttachVolume",
                "ec2:AuthorizeSecurityGroupIngress",
                "ec2:DeregisterImage",
                "ec2:DeleteSnapshot",
                "ec2:TerminateInstances",
                "ec2:CreateKeyPair",
                "ec2:CreateTags",
                "ec2:RegisterImage",
                "ec2:CreateImage",
                "ec2:RunInstances",
                "ec2:CopyImage",
                "ec2:ModifyImageAttribute",
                "ec2:StopInstances",
                "ec2:CreateVolume",
                "ec2:DeleteVolume",
                "ec2:GetPasswordData",
                "ec2:ModifySnapshotAttribute",
                "ec2:CreateSecurityGroup",
                "ec2:DescribeImageAttribute",
                "ec2:DeleteSecurityGroup",
                "ec2:CreateSnapshot",
                "ec2:ModifyInstanceAttribute",
                "ec2:DeleteKeyPair".
                "ec2:DescribeImages",
                "ec2:DescribeInstances",
                "ec2:DescribeTags",
                "ec2:DescribeRegions",
                "ec2:DescribeVolumes",
                "ec2:DescribeSubnets",
                "ec2:DescribeSnapshots",
                "ec2:DescribeSecurityGroups",
                "ec2:DescribeInstanceStatus"
            ],
            "Resource": "arn:aws:ec2:*:*:*/*"
        }
    ]
}
  EOF
}

resource "aws_iam_policy_attachment" "attach-gh-ec2-ami" {
  name       = "attach-gh-ec2-ami"
  users      = ["ghactions-ami"]
  policy_arn = aws_iam_policy.gh-ec2-ami.arn
}