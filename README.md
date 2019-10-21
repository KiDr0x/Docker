### All of docker config stuff that I use on my labs.

##### Before you start, please install docker engine on your machine.

Currently I use OpenSUSE Leap, so to install the docker and docker-compose packages with the following command:

`zypper install docker docker-compose`

Starting docker daemon at boot:

`sudo systemctl enable docker`

Join user to docker group, that's allowed to use the docker daemon:

`sudo usermod -G docker -a YOURUSERNAME`
