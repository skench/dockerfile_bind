docker-bind the image debian:stretch-slim

Default run

EXAMPLES COMMAND "docker build -t $name_images .

docker run --name $name_container -d --restart="always" --publish 53:53/tcp --publish 53:53/udp --volume patch_to_host_directory:/data $name_images
