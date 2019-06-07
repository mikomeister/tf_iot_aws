resource "aws_iam_role_policy_attachment" "cloudWatchPolicyAttachemnt" {
  role       = "${aws_iam_role.IoTcloudwatchMetricRole.name}"
  policy_arn = "${aws_iam_policy.IoTCloudwatchMetricPolicy.arn}"
}

resource "aws_iam_role_policy_attachment" "LambdaPolicyAttachemnt" {
  role       = "${aws_iam_role.IoTLambdaRole.name}"
  policy_arn = "${aws_iam_policy.IoTLambdaPolicy.arn}"
}
resource "aws_iam_role_policy_attachment" "DynamoDbPolicyAttachemnt" {
  role       = "${aws_iam_role.IoTDynamoDbRole.name}"
  policy_arn = "${aws_iam_policy.IoTDynamoDbPolicy.arn}"
}