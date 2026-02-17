winecfg
xvfb-run -a winetricks -q comctl32 vcrun2019 vcrun2013
xvfb-run -a wine server64.exe +server_dir '/server1'
xvfb-run -a wine reg add "HKEY_CURRENT_USER\Software\Wine\Drivers" /v "wineusb" /d "disabled" /f