FROM quay.io/minio/minio:latest

ENV MINIO_SERVER_URL=https://content.retainer.cloud
ENV MINIO_BROWSER_REDIRECT_URL=https://minio.retainer.cloud
ENV MINIO_ROOT_USER=ROOTNAME
ENV MINIO_ROOT_PASSWORD=CHANGEME123

CMD ["server", "/data", "--console-address", ":3026"]

VOLUME /data
