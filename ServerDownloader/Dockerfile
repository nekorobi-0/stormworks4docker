FROM cm2network/steamcmd
COPY --chmod=755 install_server.sh /home/steam/steamcmd/install_server.sh
COPY --chmod=755 chown.sh /home/steam/steamcmd/chown.sh
COPY --chmod=755 startupscript.sh /home/steam/steamcmd/startupscript.sh
USER root
RUN apt-get update && apt-get install -y gosu && rm -rf /var/lib/apt/lists/*
#RUN chmod +x /home/steam/steamcmd/install_server.sh
CMD ["bash","/home/steam/steamcmd/startupscript.sh"]