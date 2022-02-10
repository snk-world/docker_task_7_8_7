FROM centos:8 as builder
WORKDIR /opt/test

FROM scratch

COPY --from=builder /lib64/libtinfo.so.6 /lib64/
COPY --from=builder /lib64/ld-linux-x86-64.so.2 /lib64/
COPY --from=builder  /lib64/libuuid.so.1  /lib64/
COPY --from=builder  /lib64/libidn2.so.0 /lib64/
COPY --from=builder  /lib64/libgpgme.so.11 /lib64/
COPY --from=builder  /lib64/libmetalink.so.3 /lib64/
COPY --from=builder  /lib64/libnettle.so.6 /lib64/
COPY --from=builder  /lib64/libgnutls.so.30 /lib64/
COPY --from=builder  /lib64/libz.so.1 /lib64/
# COPY --from=builder  /lib64/libpsl.so.5 /lib64/
COPY --from=builder  /lib64/libc.so.6 /lib64/
COPY --from=builder  /lib64/libunistring.so.2 /lib64/
COPY --from=builder  /lib64/libassuan.so.0 /lib64/
COPY --from=builder  /lib64/libgpg-error.so.0 /lib64/
COPY --from=builder  /lib64/libexpat.so.1 /lib64/
COPY --from=builder  /lib64/libp11-kit.so.0 /lib64/
COPY --from=builder  /lib64/libdl.so.2 /lib64/
COPY --from=builder  /lib64/libtasn1.so.6 /lib64/
COPY --from=builder  /lib64/libhogweed.so.4 /lib64/
COPY --from=builder  /lib64/libgmp.so.10 /lib64/
COPY --from=builder  /lib64/libpthread.so.0 /lib64/
COPY --from=builder  /lib64/libffi.so.6 /lib64/

COPY --from=builder /bih/sh /bin/

COPY ./getfav.sh /opt/test/
 
