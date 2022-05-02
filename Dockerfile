FROM debian:bullseye

RUN set -xe                 && \
  apt-get update            && \
  apt-get install -y           \
  libauthen-ntlm-perl          \
  libcgi-pm-perl               \
  libcrypt-openssl-rsa-perl    \
  libdata-uniqid-perl          \
  libencode-imaputf7-perl      \
  libfile-copy-recursive-perl  \
  libfile-tail-perl            \
  libio-socket-inet6-perl      \
  libio-socket-ssl-perl        \
  libio-tee-perl               \
  libhtml-parser-perl          \
  libjson-webtoken-perl        \
  libmail-imapclient-perl      \
  libparse-recdescent-perl     \
  libmodule-scandeps-perl      \
  libreadonly-perl             \
  libregexp-common-perl        \
  libsys-meminfo-perl          \
  libterm-readkey-perl         \
  libtest-mockobject-perl      \
  libtest-pod-perl             \
  libunicode-string-perl       \
  liburi-perl                  \
  libwww-perl                  \
  libtest-nowarnings-perl      \
  libtest-deep-perl            \
  libtest-warn-perl            \
  make                         \
  cpanminus                    \
  wget

RUN wget -N https://imapsync.lamiral.info/imapsync && \
  mv imapsync /usr/bin/imapsync && \
  chmod +x /usr/bin/imapsync

USER nobody:nogroup

ENV HOME /var/tmp/

WORKDIR /var/tmp/

STOPSIGNAL SIGINT

CMD ["/usr/bin/imapsync"]
