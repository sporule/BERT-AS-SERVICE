FROM tensorflow/tensorflow:1.12.0-gpu-py3
RUN pip install bert-serving-server[http]
RUN mkdir -p /app
COPY entrypoint.sh prepare_models.sh /app/
RUN ["chmod", "+x", "/node/execure.sh"]

RUN apt update && apt install -y wget unzip&& \
    mkdir /app/models && \
    bash /app/prepare_models.sh && \
    apt remove -y unzip wget && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
RUN ["chmod", "+x", "/app/entrypoint.sh"]
ENTRYPOINT ["/app/entrypoint.sh"]

HEALTHCHECK --timeout=5s CMD curl -f http://localhost:8125/status/server || exit 1
