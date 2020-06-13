ARG METAMAPPER_VERSION=latest
ARG METAMAPPER_IMAGE=metamapper/metamapper

FROM ${METAMAPPER_IMAGE}:${METAMAPPER_VERSION}

COPY . /usr/local/metamapper

# If you installed additional plugins, we'll install them here.
RUN if [ -s /usr/local/metamapper/metamapper/requirements.txt ]; \
    then pip install -r /usr/local/metamapper/metamapper/requirements.txt; fi
