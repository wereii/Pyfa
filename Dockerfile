FROM quay.io/pypa/manylinux_2_24_x86_64

RUN apt-get update && apt-get upgrade -y \
    && apt install -y build-essential curl git libgtk-3-dev libfuse2

ENV PATH="/opt/python/cp38-cp38/bin:${PATH}"
ENV PIP_CACHE_DIR=/pyfa/appimage/build/.cache

WORKDIR /pyfa

COPY . .

WORKDIR /pyfa/appimage/build

CMD ["sh", "../build.sh"]

