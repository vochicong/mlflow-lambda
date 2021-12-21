FROM python:buster

ARG FUNCTION_DIR="/function"

WORKDIR ${FUNCTION_DIR}

RUN pip install \
  --target ${FUNCTION_DIR} \
  awslambdaric

COPY app/* ${FUNCTION_DIR}/

ENTRYPOINT [ "/usr/local/bin/python", "-m", "awslambdaric" ]
CMD [ "app.handler" ]
