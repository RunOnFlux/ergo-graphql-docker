This repo's purpose is to build the latest image for the Ergo-GraphQL component. It is designed to be compatible with Docker-Compose and FluxOS.

The Dockerfile builds [Ergo-GraphQL](https://github.com/capt-nemo429/ergo-graphql).

Install [Docker](https://docs.docker.com/engine/install/) and follow the below instructions to build the image and push it to Docker-Hub.

```
# In the Dockerfile, update the version if required
# Latest version can be found at [Ergo-GraphQL](https://github.com/capt-nemo429/ergo-graphql/tags)
ARG VERSION="0.3.5"

# Build the image and tag it as "flux-ergo-graphql"
docker build . -t flux-ergo-graphql

# Log in to Docker-Hub with your username and password
docker login -u your-username

# Tag the image with the Docker-Hub repo tag
docker tag flux-ergo-graphql runonflux/flux-ergo-graphql:latest

# Push the image to Docker-Hub (each layer may take a few mins to push)
docker push runonflux/flux-ergo-graphql:latest

# Use the image in FluxOS or in your Docker-Compose file
runonflux/flux-ergo-graphql:latest
```
