FROM debian:trixie-slim
RUN set -eux&&\
    echo 'Acquire::Retries "5"&&' > /etc/apt/apt.conf.d/80-retries&& \
    echo 'Acquire::http::Pipeline-Depth "5"&&' > /etc/apt/apt.conf.d/80-pipeline&& \
    echo 'Binary::apt::APT::Keep-Downloaded-Packages "false"&&' \
    > /etc/apt/apt.conf.d/80-no-cache&& 
RUN apt update && \
    apt install -y wget gpg xvfb gosu screen&&\
    mkdir -pm755 /etc/apt/keyrings &&\
    wget -O - https://dl.winehq.org/wine-builds/winehq.key | gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key - &&\
    dpkg --add-architecture i386 &&\
    wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/trixie/winehq-trixie.sources &&\
    apt update && \
    apt install -y --install-recommends winehq-stable &&\
    rm -rf /var/lib/apt/lists/*
ENV WINEARCH=win64
ENV WINEPREFIX=/home/user/.wine
COPY --chmod=777 serverapp /serverapp
RUN useradd user && mkdir /home/user && chown -R user:user /home/user
RUN apt install -y wine32 wine64&& rm -rf /var/lib/apt/lists/* &&\
    wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks &&\
    chmod +x winetricks &&\
    cp winetricks /usr/local/bin
COPY startupscript.sh /home/user/startupscript.sh
COPY runserver.sh /home/user/runserver.sh
WORKDIR /home/user
ENTRYPOINT ["bash", "startupscript.sh"]