# AWS Lambda using Custom Python Image

The custom container includes

- Python
- [Mlflow](https://www.mlflow.org)
- A simple [Mlflow model](https://www.mlflow.org/docs/latest/models.html#example-creating-a-custom-add-n-model)

When deployed to AWS Lambda, the container will add a small integer to any input dataframe and make a json response.

## Commands

Use Makefile.

### Test data

```json
{
    "columns": ["a", "b", "c"],
    "data": [[1, 2, 3], [4, 5, 6]]
}
```

## References

- [Mlflow sample AddN model](https://www.mlflow.org/docs/latest/models.html#example-creating-a-custom-add-n-model)
- [AWS Lambda Developer Guide: Create a Python image from an alternative base image](https://docs.aws.amazon.com/lambda/latest/dg/python-image.html#python-image-create-alt)
- [AWS Blog: Container image support for Lambda](https://aws.amazon.com/blogs/aws/new-for-aws-lambda-container-image-support/)