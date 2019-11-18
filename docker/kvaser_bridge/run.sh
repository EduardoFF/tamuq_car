docker run -i -t --rm --name falco --privileged \
       -v /var/run/docker.sock:/host/var/run/docker.sock \
       -v /dev:/host/dev \
       -v /proc:/host/proc:ro \
       -v /boot:/host/boot:ro \
       -v /lib/modules:/host/lib/modules:ro \
       -v /usr:/host/usr:ro \
       -v ${PWD}/kvaser_bridge.launch:/kvaser_bridge.launch \
       tamuqcar:kvaser_bridge \
       $1
