# syntax=docker/dockerfile:1
FROM busybox:latest
COPY --chmod=755 <<EOF install.sh
#!/bin/sh
while true; do
  echo -ne "The time is now $(date +%T)\\r"
  sleep 1
done
EOF

ENTRYPOINT install.sh
