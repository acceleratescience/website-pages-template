FROM ubuntu:24.04
LABEL container="website-pages"
LABEL maintainer="Ryan Daniels"
LABEL version="0.1.0"
LABEL description="Dockerfile template for mkdocs material theme site for accelerate."

WORKDIR /workspace

COPY . /workspace

# Install dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

RUN pip install -r requirements.txt