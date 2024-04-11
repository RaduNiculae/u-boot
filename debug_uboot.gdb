target remote localhost:1234
b crt0_64.S :114
c
add-symbol-file u-boot $x0
b board_init_r
c
b common/main.c:63
c
b cmd/boot.c:40
c
add-symbol-file helloworld 0x60001000
b _libplat_entry
c
b entry64.S:187
c
b pagetable64.S:455
c
b setup.c:77
c