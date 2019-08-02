FROM fedora:28
ENV TF_NAME=tensorflow1.12
ENV BIN_FILE=/root/rpmbuild/SOURCES/tensorflow_model_server
ENV BIN_NAME=tensorflow_model_server

MAINTAINER Harshad Reddy Nalla <hnalla@redhat.com>

RUN dnf install -y fedora-packager @development-tools
RUN rpmdev-setuptree
COPY rpmmacro /root/.rpmmacros
COPY tensorflow_model_server /root/rpmbuild/SOURCES/tensorflow_model_server
COPY specfile /root/rpmbuild/SPECS/tensorflow1.12.spec
COPY build_rpm.sh /root/
CMD ["/root/build_rpm.sh"]
