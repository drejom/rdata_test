FROM ghcr.io/kestra-io/rdata:latest

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Install packages
RUN R -e 'install.packages("pak")'
RUN R -e 'pak::pak(c("tidyverse/ellmer", "atrrr"))'