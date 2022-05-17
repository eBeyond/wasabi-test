{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "ListMy",
      "Effect": "Allow",
      "Action": "s3:ListAllMyBuckets",
      "Resource": "arn:aws:s3:::*"
    },
    {
      "Sid": "AllowAll-S3ActionsToOwnBucket",
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::sys-int-test-*"
    }
  ]
}