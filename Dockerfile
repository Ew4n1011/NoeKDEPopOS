FROM deloo/markdown-docs AS builder

COPY . /home/src
ENV WORKSPACE=/home/src
ENV TITLE=KDE Pop OS Guide
ENV LANGUAGE=es
RUN makedocs "." "dst"

FROM nginx

COPY --from=builder /home/src/dst /usr/share/nginx/html