cd "$(dirname "$0")"
docker build -t stormworks-dedicatedserver-downloader:latest .
docker run --rm -it -v $(pwd)/server:/home/steam/server stormworks-dedicatedserver-downloader:latest
#-v $(pwd)/server:/home/steam/server