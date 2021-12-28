all: build run

# Build image
build:
	docker build -t hello-world .

# Run Lambda emulator
run:
	docker run -v ~/.aws-lambda-rie:/aws-lambda -p 9000:8080 --entrypoint /aws-lambda/aws-lambda-rie hello-world /function/entry.sh app.handler

# Testing function invocation
test:
	curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'

