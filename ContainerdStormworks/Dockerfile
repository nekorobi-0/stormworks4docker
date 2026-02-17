FROM ghcr.io/astral-sh/uv:python3.14-trixie-slim
RUN dpkg --add-architecture i386 && \
    apt update&&\
    apt install -y wget python3 python3-xlib apparmor-profiles libgl1-mesa-dri:i386 libglx-mesa0:i386&&\
    wget https://github.com/Open-Wine-Components/umu-launcher/releases/download/1.3.0/python3-umu-launcher_1.3.0-1_amd64_debian-12.deb&&\
    wget https://github.com/Open-Wine-Components/umu-launcher/releases/download/1.3.0/umu-launcher_1.3.0-1_all_debian-12.deb&&\
    dpkg -i python3-umu-launcher_1.3.0-1_amd64_debian-12.deb&&\
    dpkg -i umu-launcher_1.3.0-1_all_debian-12.deb&&\
    rm umu-launcher_1.3.0-1_all_debian-12.deb&&\
    rm python3-umu-launcher_1.3.0-1_amd64_debian-12.deb &&\
    apt -f install &&\
    touch umu-run &&\
    uv add --script umu-run 'python-xlib' 'urllib3' 'truststore'
CMD ["sleep","infinity"]