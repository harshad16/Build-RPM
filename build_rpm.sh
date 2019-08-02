#!/bin/bash

rpmdev-setuptree
# cp -r rpmmacro /root/.rpmmacro
# cp -r tensorflow_model_server /root/rpmbuild/SOURCES/tensorflow_model_server
# cp -r specfile /root/rpmbuild/SPECS/tensorflow1.12.spec
cd /root/rpmbuild/SPECS
rpmbuild -bb tensorflow1.12.spec
cp -r bld/rpm/x86_64/* /root/rpmbuild/RPM/
