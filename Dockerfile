
FROM python:3.8-slim

WORKDIR /app
COPY etl-engine-module.py etl-engine-module.py
COPY etl-engine-module etl-engine-module
ENV FORMAT "dummy format"
ENV DATAPATH "dummy datapath"
ENV NAME "dummy data asset name"
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir pyyaml && \
    pip install --no-cache-dir requests
ENTRYPOINT ["python3"]
CMD ["etl-engine-module.py"]

