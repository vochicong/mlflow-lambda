import mlflow.pyfunc

# Define the Mlflow model class
class AddN(mlflow.pyfunc.PythonModel):
    def __init__(self, n):
        self.n = n

    def predict(self, context, model_input):
        return model_input.apply(lambda column: column + self.n)


# Construct and save the model
def construct_model(model_path):
    add5_model = AddN(n=5)
    mlflow.pyfunc.save_model(path=model_path, python_model=add5_model)


# Load the model in `python_function` format
def load_model(model_path):
    model = mlflow.pyfunc.load_model(model_path)
    return model


# Evaluate the model
def predict(model, model_input):
    model_output = model.predict(model_input)
    return model_output
