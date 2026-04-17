# TODO: Write an aws_s3_bucket resource and two output blocks.
#
# Requirements:
#   Resource — aws_s3_bucket, label "main":
#     - bucket name: "learn-terraform-task-4-9-outputs"
#     - tags: Name, Environment ("dev"), Project, ManagedBy
#
#   Output 1 — label "bucket_name":
#     - value: the bucket name attribute of your S3 resource
#
#   Output 2 — label "bucket_arn":
#     - value: the ARN attribute of your S3 resource
#
# Hint: output syntax looks like this:
#   output "<label>" {
#     value = <expression>
#   }
