docker-bind the image debian:stretch-slim

Default run

Run command to the CMD git clone https://github.com/skench/dockerfile_bind.git 

cd dockerfile_bind/

EXAMPLES COMMAND "docker build -t $name_images .

docker run --name $name_container -d --restart="always" --publish 5353:53/tcp --publish 5353:53/udp --publish 953:953/tcp --publish 953:953/tcp --volume patch_to_host_directory:/data $name_images

docker exec -it $name_container bash
