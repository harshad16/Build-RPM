Build RPM
=========
An example project for building rpm.



Development environment
-----------------------


- To build RPMs we need a set of development tools. This is a one-time-only setup, installed by running those commands from a system administration (root) account:
  ```dnf install fedora-packager @development-tools```
- To be able to test the build procedure in a clean chroot you need to configure your non-privileged account to be a member of the 'mock' group:
  ```usermod -a -G mock <your username>```
