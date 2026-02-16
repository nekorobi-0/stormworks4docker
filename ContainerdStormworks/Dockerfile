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
ENV WINEARCH=win64
ENV WINEPREFIX=/home/user/.wine
COPY --chmod=777 serverapp /serverapp
RUN useradd user && mkdir /home/user && chown -R user:user /home/user
RUN apt install -y wine32 wine64&& apt-get purge -y --auto-remove && rm -rf /var/lib/apt/lists/*
RUN wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks&&\
    chmod +x winetricks &&\
    cp winetricks /usr/local/bin

USER user
COPY startupscript.sh /home/user/startupscript.sh
WORKDIR /home/user
CMD ["bash", "startupscript.sh"]