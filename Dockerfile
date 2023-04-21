FROM ubuntu:bionic

# Obtain dependencies
RUN apt-get update && \
    apt-get install \
    -y \
    build-essential \
    scons \
    pkg-config \
    libx11-dev \
    libxcursor-dev \
    libxinerama-dev \
    libgl1-mesa-dev \
    libglu-dev \
    libasound2-dev \
    libpulse-dev \
    libudev-dev \
    libxi-dev \
    libxrandr-dev

# Scons use python3
RUN sed -i '1i#! /usr/bin/python3' $(which scons)

# Copy build scripts
COPY tg-build/* /tg-build/
RUN chmod +x /tg-build/*


WORKDIR /the-gates
ENTRYPOINT ["/bin/sh"]
CMD ["/tg-build/build_editor.sh"]
