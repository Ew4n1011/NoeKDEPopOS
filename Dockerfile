FROM deloo/markdown-docs AS builder

COPY . /home/src
ENV WORKSPACE=/home/src
ENV TITLE=
ENV LANGUAGE=es
RUN makedocs "." "dst"

FROM nginx

COPY --from=builder /home/dst /usr/share/nginx/html