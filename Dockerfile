# This docker file must be built with the `scripts/build_docker.sh` script or it will fail.

################################################################################
ARG CPP_DEV_VERSION=0.1
FROM seelabs/cpp_dev:${CPP_DEV_VERSION}

################################################################################
ARG EMACS_VERSION=26.1

COPY ./scripts/emacs.sh .
RUN /bin/bash emacs.sh ${EMACS_VERSION} && rm emacs.sh
################################################################################
