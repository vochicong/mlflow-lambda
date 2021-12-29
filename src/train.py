import os

import pandas as pd
from mlflow.pyfunc import load_model

from core import construct_model, predict

if __name__ == "__main__":
    model_path = os.path.join("models", "add_n_model")
    construct_model(model_path)
    model = load_model(model_path)
    model_input = pd.DataFrame([range(10)])
    model_output = predict(model, model_input)
    print(model_output)
    assert model_output.equals(pd.DataFrame([range(5, 15)]))
