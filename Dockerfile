FROM envoyproxy/envoy:distroless-v1.28-latest

COPY envoy.yaml /srv/config/envoy.yaml

EXPOSE 80
CMD ["--config-path", "/srv/config/envoy.yaml", "--restart-epoch", "0"]
