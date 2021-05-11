# The topz container runs in the same namespace as another container, so It can monitor the other containers resource usage
# Run another container
main_container_id=$(docker run -d  -p 9000:9000 --env PORT=9000 server_server)

# Run topz as sidecar
docker run -d --pid=container:${main_container_id} -p 8080:8080 brendanburns/topz:db0fa58 /server --addr=0.0.0.0:8080

# Access curl
curl 0.0.0.0:8080/topz

