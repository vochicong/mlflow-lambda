# AWS Lambda using  Custom Python Image

## Commands

### Run Lambda emulator

    docker run -v ~/.aws-lambda-rie:/aws-lambda -p 9000:8080   --entrypoint /aws-lambda/aws-lambda-rie hello-world /function/entry.sh app.handler

### Testing function invocation

    curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'

## References

- [AWS Lambda Developer Guide: Create a Python image from an alternative base image](https://docs.aws.amazon.com/lambda/latest/dg/python-image.html#python-image-create-alt)
- [AWS Blog: Container image support for Lambda](https://aws.amazon.com/blogs/aws/new-for-aws-lambda-container-image-support/)

