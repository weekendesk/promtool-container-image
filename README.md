# promtool
container image containing the promtool CLI ( https://github.com/prometheus/prometheus/tree/master/cmd/promtool ). 

Intended to be used in CI pipelines

# Build

#### login to the docker registry
```
docker login docker.weekendesk.com:5000
```
#### pick a command
- Build promtool container images from a given prometheus version
```
make build PROMTOOL_VERSION=v1.7.1
```

- Publish built promtool container images
```
make publish PROMTOOL_VERSION=v1.7.1
```

- Build & publish promtool container images
```
make sync PROMTOOL_VERSION=v1.7.1
```
