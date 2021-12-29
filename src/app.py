import os
import pandas as pd
import sys
import mlflow
import mlflow.pyfunc

from core import load_model, predict

model_path = os.path.join("models", "add_n_model")
model = load_model(model_path)


def hello(columns, data):
    input = pd.DataFrame(data=data, columns=columns)
    output = predict(model, model_input=input)

    return output.to_json(orient="split")


def handler(event, context):
    return hello(event["columns"], event["data"])
