# Homework-1
- setup qemu
- install ubuntu using qemu
- setup docker
- run docker container

# Host Machine Information - 
- OS and Kernal Information - `$ uname -a`
```
Linux fedora 5.19.14-200.fc36.x86_64 #1 SMP PREEMPT_DYNAMIC Wed Oct 5 21:31:17 UTC 2022 x86_64 x86_64 x86_64 GNU/Linux
```
- CPU: `$ lscpu` 
```
Architecture:                    x86_64
CPU op-mode(s):                  32-bit, 64-bit
Address sizes:                   39 bits physical, 48 bits virtual
Byte Order:                      Little Endian
CPU(s):                          4
On-line CPU(s) list:             0-3
Vendor ID:                       GenuineIntel
Model name:                      Intel(R) Core(TM) i5-5200U CPU @ 2.20GHz
CPU family:                      6
Model:                           61
Thread(s) per core:              2
Core(s) per socket:              2
Socket(s):                       1
Stepping:                        4
CPU(s) scaling MHz:              49%
CPU max MHz:                     2700.0000
CPU min MHz:                     500.0000
BogoMIPS:                        4389.51
Flags:                           fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid rdseed adx smap intel_pt xsaveopt dtherm ida arat pln pts md_clear flush_l1d
Virtualization:                  VT-x
L1d cache:                       64 KiB (2 instances)
L1i cache:                       64 KiB (2 instances)
L2 cache:                        512 KiB (2 instances)
L3 cache:                        3 MiB (1 instance)
NUMA node(s):                    1
NUMA node0 CPU(s):               0-3
```
- RAM: `$ lsmem`
```
RANGE                                  SIZE  STATE REMOVABLE BLOCK
0x0000000000000000-0x00000000a7ffffff  2.6G online       yes  0-20
0x0000000100000000-0x0000000257ffffff  5.4G online       yes 32-74
Memory block size:       128M
Total online memory:       8G
Total offline memory:      0B
```

- Block Devices: `$ lsblk`
```
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 223.6G  0 disk 
├─sda1   8:1    0   499M  0 part 
├─sda2   8:2    0   100M  0 part 
├─sda3   8:3    0    16M  0 part 
├─sda4   8:4    0  99.4G  0 part 
├─sda5   8:5    0   500M  0 part /boot/efi
├─sda6   8:6    0     8G  0 part [SWAP]
└─sda7   8:7    0 115.1G  0 part /
zram0  252:0    0   7.7G  0 disk [SWAP]
```
