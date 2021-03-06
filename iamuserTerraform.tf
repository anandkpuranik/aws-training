resource "aws_iam_user" "user" {
  name = "aws-assignment"
}

resource "aws_iam_policy" "policy" {
  name        = "aws-assignment-policy"
  description = "iam policy for lambda, s3, cloudwatch"

  policy = <<EOF
{
  "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "s3:GetObjectVersionTagging",
                "s3:GetObjectAcl",
                "s3:GetBucketObjectLockConfiguration",
                "cloudwatch:DescribeAlarmsForMetric",
                "s3:GetObjectVersionAcl",
                "s3:GetBucketPolicyStatus",
                "cloudwatch:DescribeInsightRules",
                "s3:GetObjectRetention",
                "cloudwatch:GetDashboard",
                "s3:GetBucketWebsite",
                "cloudwatch:GetInsightRuleReport",
                "s3:ListJobs",
                "s3:GetObjectLegalHold",
                "s3:GetBucketNotification",
                "cloudwatch:GetMetricStatistics",
                "s3:GetReplicationConfiguration",
                "s3:ListMultipartUploadParts",
                "s3:GetObject",
                "s3:DescribeJob",
                "cloudwatch:DescribeAlarms",
                "s3:GetAnalyticsConfiguration",
                "s3:GetObjectVersionForReplication",
                "s3:GetAccessPoint",
                "s3:GetLifecycleConfiguration",
                "s3:GetBucketTagging",
                "s3:GetInventoryConfiguration",
                "cloudwatch:GetMetricData",
                "s3:ListBucketVersions",
                "s3:GetBucketLogging",
                "s3:GetAccelerateConfiguration",
                "s3:GetBucketPolicy",
                "cloudwatch:DescribeAnomalyDetectors",
                "s3:GetObjectVersionTorrent",
                "s3:GetEncryptionConfiguration",
                "cloudwatch:DescribeAlarmHistory",
                "s3:GetBucketRequestPayment",
                "s3:GetAccessPointPolicyStatus",
                "s3:GetObjectTagging",
                "s3:GetMetricsConfiguration",
                "cloudwatch:GetMetricWidgetImage",
                "s3:GetBucketPublicAccessBlock",
                "s3:ListBucketMultipartUploads",
                "s3:ListAccessPoints",
                "s3:GetBucketVersioning",
                "s3:GetBucketAcl",
                "s3:GetObjectTorrent",
                "s3:GetAccountPublicAccessBlock",
                "lambda:*",
                "s3:GetBucketCORS",
                "s3:GetBucketLocation",
                "s3:GetAccessPointPolicy",
                "s3:GetObjectVersion"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "assignment-attach" {
  user       = "${aws_iam_user.user.name}"
  policy_arn = "${aws_iam_policy.policy.arn}"
}
