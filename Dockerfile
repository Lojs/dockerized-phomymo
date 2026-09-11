FROM nginx:alpine

LABEL org.opencontainers.image.title="Phomymo"
LABEL org.opencontainers.image.description="Browser-based label designer for Phomemo printers"
LABEL org.opencontainers.image.source="https://github.com/transcriptionstream/phomymo"

RUN rm -rf /usr/share/nginx/html/*

COPY src/web/ /usr/share/nginx/html/
COPY LICENSE /usr/share/nginx/html/LICENSE

EXPOSE 80
