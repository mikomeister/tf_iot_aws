resource "aws_iot_policy" "PubSub" {
  name = "PubSubToAnyTopic"

  policy = <<EOF
 "Version": "2012-10-17",
   "Statement": [
{
       "Effect": "Allow",
       "Action": [
         "iot:Connect"
       ],
       "Resource": [
         "arn:aws:iot:us-east-1:${var.account_id}:client/${aws_iot_thing.example_thing.id}"
       ]
     },
     {
        "Effect": "Allow",
        "Action": [
          "iot:Publish"
        ],
        "Resource": [
          "arn:aws:iot:us-east-1:${var.account_id}:topic/Greenhouse/${aws_iot_thing.example_thing.id}"
      ]
    }
  ]
}
EOF
}
