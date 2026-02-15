FROM debian:trixie-slim
RUN apt update && \
    apt install -y wget gpg xvfb&&\
    mkdir -pm755 /etc/apt/keyrings &&\
    wget -O - https://dl.winehq.org/wine-builds/winehq.key | gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key - &&\
    dpkg --add-architecture i386 &&\
    wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/trixie/winehq-trixie.sources &&\
    apt update && \
    apt install -y --install-recommends winehq-stable &&\
    apt-get purge -y --auto-remove &&\
    rm -rf /var/lib/apt/lists/*
COPY serverapp /serverapp
CMD ["sleep", "infinity"]