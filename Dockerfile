FROM ghcr.io/marimo-team/marimo:latest-sql

RUN apt update

RUN apt install -y curl nodejs

CMD ["marimo", "edit", "--no-token", "-p", "8080", "--host", "0.0.0.0"]