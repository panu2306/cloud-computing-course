# QEMU Setup and Configuration - 
1. To create image in qcow2 format, use following command - 
```
$ qemu-img create -f qcow2 ubuntu.qcow2 10G
```
2. To install Ubuntu OS using QEMU, use following command - 
```
$ sudo qemu-system-x86_64 -hda ubuntu.qcow2 -boot d -cdrom ubuntu-20.04.5-live-server-amd64.iso -m 2048
```
3. To start the OS after installation is complete, use following command for booting up OS with more resources cpu, memory, accelerator - 
```
$ sudo qemu-system-x86_64 -hda ubuntu1.qcow2 -accel kvm -smp 2 -boot c -m 2048 
```
4. To start OS in nongraphic mode - 
```
$ sudo qemu-system-x86_64 -hda ubuntu1.qcow2 -accel kvm -smp 2 -boot c -m 2048 -nongraphic
```
5. To access OS using SSH, boot OS using following option - 
```
$ sudo qemu-system-x86_64 -hda ubuntu1.qcow2 -accel kvm -smp 2 -boot c -m 2048 -device virtio-net,netdev=net0 -netdev user,id=net0,hostfwd=tcp::8888-:22
```
> The above commands maps ssh port (22) of guest os to 8888 port of host os.

6. More advanced command -
```
$ sudo qemu-system-x86_64 -accel kvm -cpu host -m 2048 -smp 2 -hda ubuntu1.qcow2 -boot c -device virtio-net,netdev=vm -netdev user,id=vm,hostfwd=tcp:127.0.0.1:9001-:22
```
Following components are included in launched vm if above command is used - 
- `-accel`: uses `kvm` as an acceletor
- `-cpu`: uses `host's` cpu as a VM's cpu
- `-m`: to provide size of RAM
- `-smp`: to provide number of cpu cores
- `-hda`: hard disk image from which OS to be booted
- `-boot`: sets first boot option, `c` sets hard disk as a default first boot option
- `-device`: used to mention different kinds of devices including cpu, network devices, storage devices, usb devices etc. 
- `-netdev`: configure `user` mode network privilege which requires no special administrative privilege to run

## Sysbench Setup in QEMU VM - 
1. Install sysbench using following commands - 
```
$ curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.deb.sh | sudo bash
$ apt -y install sysbench
```
2. After sysbench install command completes, verify the installation - 
```
$ sysbench --version
```
