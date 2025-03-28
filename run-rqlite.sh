podman stop rqlite
podman rm rqlite
podman volume rm rqlite
mkdir -p /volumes/rqlite
podman volume create rqlite -o device=/volumes/rqlite -o=o=bind

podman run -d -v rqlite:/rqlite:rw,Z --name rqlite -p 4001:4001 docker.io/rqlite/rqlite:latest
