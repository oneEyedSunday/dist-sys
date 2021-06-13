docker volume create --name CodeVolume
docker run -it --name=Server1 -v CodeVolume:/server:ro -p 8000:4000 -e PORT=4000 oneeyedsunday/sidecar-paas-server
# This inherits the ro from Server1, so just link with -v flag
# docker run -it --name=Hook1 --volumes-from Server1 oneeyedsunday/sidecar-paas-hook
docker run -it --name=Hook1 -v CodeVolume:/server oneeyedsunday/sidecar-paas-hook