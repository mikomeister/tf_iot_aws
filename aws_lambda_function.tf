resource "aws_lambda_function" "LambdaSendResponse" {
  function_name = "LambdaSendResponse"
  handler = "LambdaSendResponse.lambda_handler"
  role = "${aws_iam_role.IoTLambdaRole.arn}"
  runtime = "python2.7"
  filename = "./lambda_code/LambdaSendResponse.zip"
}

resource "aws_lambda_permission" "LambdaSns" {
  action = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.LambdaSendResponse.function_name}"
  principal = "sns.amazonaws.com"
  source_arn = "${aws_sns_topic.Sunshades.arn}"
}
