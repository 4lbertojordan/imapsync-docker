FROM ubuntu:18.04

#Pre-install
RUN apt update -y && apt upgrade -y

##Install dependecies
RUN apt-get install -y \
git \
makepasswd \
rcs \
perl-doc \
libio-tee-perl \
libmail-imapclient-perl \
libdigest-md5-file-perl \
libterm-readkey-perl \
libfile-copy-recursive-perl \
build-essential \
make \
automake \
libunicode-string-perl \
libauthen-ntlm-perl \
libcrypt-ssleay-perl \
libdigest-hmac-perl \
libfile-copy-recursive-perl \
libio-compress-perl \
libio-socket-inet6-perl \
libio-socket-ssl-perl \
libio-tee-perl \
libmodule-scandeps-perl \
libnet-ssleay-perl \
libpar-packer-perl \
libreadonly-perl \
libterm-readkey-perl \
libtest-pod-perl \
libtest-simple-perl \
libunicode-string-perl \
liburi-perl \
libcam-pdf-perl \
libssl-dev \
cpanminus

#Install CPAN
RUN cpanm Mail::IMAPClient \
JSON::WebToken \
Test::MockObject \
Unicode::String \
Data::Uniqid \
Crypt::OpenSSL::RSA \
Dist::CheckConflicts \
JSON::WebToken::Crypt::RSA \
Regexp::Common \
Sys::MemInfo

#Install Imapcsync
RUN git clone git://github.com/imapsync/imapsync.git \
    && cd imapsync \
    && mkdir dist \
    && make install \ 
    && imapsync -v

COPY imap-sync.sh /bin/    

ENTRYPOINT [ "/bin/imap-sync.sh" ]

