#!/bin/sh
set -e

USER=${FTP_USER:-ftpuser}
PASS=${FTP_PASSWORD:-ftppassword}
HOME=/home/ftpusers/${USER}

mkdir -p ${HOME}

# Create user if not exists
if ! id "${USER}" >/dev/null 2>&1; then
  adduser -D -h ${HOME} ${USER}
fi

echo "${USER}:${PASS}" | chpasswd

exec pure-ftpd \
  -l unix \
  -p 30000:30009 \
  -P ${PUBLICHOST:-localhost} \
  -j \
  -R
