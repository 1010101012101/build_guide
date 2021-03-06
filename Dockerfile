FROM ubuntu:16.04
RUN apt-get update
RUN apt install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev openjdk-8-jdk
RUN mkdir -p /home/android/bin
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /home/android/bin/repo && chmod a+x /home/android/bin/repo
RUN mkdir -p /home/android/lineage
ENV PATH $PATH:/home/android/bin:/home/android/lineage/out/host/linux-x86/bin
RUN cd /home/android/lineage
ENV SHELL /bin/bash