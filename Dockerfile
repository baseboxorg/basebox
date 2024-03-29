FROM       scratch
MAINTAINER Open BaseBox.org <open@basebox.org>

ADD ./rootfs.tar /
ADD ./opkg.conf         /etc/opkg.conf
ADD ./opkg-install      /usr/bin/opkg-install
ADD ./functions.sh      /lib/functions.sh
RUN opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/libgcc_4.8-linaro-1_x86_64.ipk
RUN opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/libc_0.9.33.2-1_x86_64.ipk

CMD ["/bin/sh"]
