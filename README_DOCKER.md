# Marimo with Node.js Docker Image

This repository contains a `Dockerfile` to build a custom Marimo image that includes Node.js.

## Quick Start

To build and run the custom image using Docker Compose:

```bash
docker compose up
```

This will:
1.  Build the `Dockerfile` in the current directory, creating an image named `marimo_js:latest`.
2.  Start a container named `marimo` from that image.
3.  Map port `8081` on your local machine to port `8080` in the container.
4.  Mount the `/opt/portainer/data/marimo/data` directory on your host to `/app/data` in the container, persisting your notebooks.

## Services

-   **`marimo`**: A service running a custom Marimo image based on `ghcr.io/marimo-team/marimo:latest-sql` with Node.js installed.

## Customization

-   You can modify the `Dockerfile` to add other dependencies or change the base image.
-   The `docker-compose.yml` file can be adjusted to change port mappings, volume mounts, or resource limits.
