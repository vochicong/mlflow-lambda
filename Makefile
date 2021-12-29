all: train build run

# Build image
build:
	docker build -t hello-world .

# Run Lambda emulator
run:
	docker run -p 9000:8080 --entrypoint /aws-lambda/aws-lambda-rie \
	-v ~/.aws-lambda-rie:/aws-lambda \
	hello-world /function/entry.sh app.handler
# -v $(PWD)/src:/function -v $(PWD)/models:/function/models \

# Testing function invocation
test:
	curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" \
	-H 'Content-Type: application/json' \
	-d '{"columns": ["a", "b", "c"],"data": [[1, 2, 3], [4, 5, 6]]}'


train:
	rm -Rf models/add_n_model && python src/train.py