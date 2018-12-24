FROM fedora:29

WORKDIR /root

RUN dnf -y update && dnf clean all
RUN dnf install -y git gcc ncurses-devel elfutils-libelf-devel bc \
  openssl-devel libcap-devel clang llvm graphviz bison flex glibc-static make

RUN git clone git://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git --depth 1

ENTRYPOINT [ "/usr/bin/bash" ]
