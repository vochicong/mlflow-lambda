FROM docker.io/mambaorg/micromamba:0.19.1

COPY conda.yml /tmp/
RUN micromamba install -y -n base -f /tmp/conda.yml && \
    micromamba clean --all --yes

ARG FUNCTION_DIR="/function"
WORKDIR ${FUNCTION_DIR}
COPY src/* ${FUNCTION_DIR}/
ENTRYPOINT [ "/opt/conda/bin/python", "-m", "awslambdaric" ]
CMD [ "app.handler" ]
