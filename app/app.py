import sys
import mlflow


def hello():
    return f"Mlflow {mlflow.__version__}, Python {sys.version}\n"


def handler(event, context):
    return hello()


if __name__ == "__main__":
    print(hello())
