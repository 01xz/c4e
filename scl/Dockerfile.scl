FROM ubuntu:18.04 AS installer

ARG synopsys_root=/opt/synopsys
ARG installer_path=synopsysinstaller_v5.0
ARG installer_version=v5.0
ARG package_path=scl_v2018.06
ARG snpslmd_fix=snpslmd_fix.c

COPY ${installer_path} /tmp/installer
COPY ${package_path} /tmp/packages
COPY ${snpslmd_fix} /root/snpslmd_fix.c

RUN sed -i 's/cn.archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt update \
    && apt install -y --no-install-recommends perl build-essential \
    && mkdir -p ${synopsys_root} \
    && chmod +x /tmp/installer/SynopsysInstaller_${installer_version}.run \
    && /tmp/installer/SynopsysInstaller_${installer_version}.run -dir /tmp/installer \
    && echo "yes" | USER=root /tmp/installer/batch_installer -install_as_root -source /tmp/packages -target ${synopsys_root} -allprods \
    && mkdir -p ${synopsys_root}/scl/2018.06/fix \
    && gcc -ldl -shared -fPIC /root/snpslmd_fix.c -o ${synopsys_root}/scl/2018.06/fix/snpslmd_fix.so \
    && rm -rf /tmp/installer \
    && rm -rf /tmp/packages

FROM ubuntu:18.04

ARG synopsys_root=/opt/synopsys
ARG license=Synopsys.dat

RUN ln -s /lib64/ld-linux-x86-64.so.2 /lib64/ld-lsb-x86-64.so.3 \
    && mkdir -p /usr/tmp/.flexlm

COPY --from=installer ${synopsys_root} ${synopsys_root}
COPY ${license} ${synopsys_root}/scl/2018.06/admin/license/synopsys.lic

ENV PATH ${synopsys_root}/scl/2018.06/linux64/bin:$PATH
ENV LM_LICENSE_FILE ${synopsys_root}/scl/2018.06/admin/license/synopsys.lic
ENV SNPSLMD_FIX ${synopsys_root}/scl/2018.06/fix/snpslmd_fix.so

EXPOSE 27000

ENTRYPOINT ["/bin/bash", "-c"]

CMD ["LD_PRELOAD=$SNPSLMD_FIX lmgrd -c $LM_LICENSE_FILE -l /root/log.txt && tail -f /dev/null"]
