FROM ghcr.io/kestra-io/rdata:latest

# Install packages
RUN R -e 'install.packages("pak")'
RUN R -e 'pak::pak(c("tidyverse/ellmer", "atrrr"))'