### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# Global Properties
properties() { '
kernel.string=Krispy Kernel for the Xperia 1 III (Sagami) by Saku
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=pdx215
'; } # End Properties

### AnyKernel Installer Script
## Boot Files Attributes
boot_attributes() {
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;
} # End Attributes

# Boot Shell Variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

. tools/ak3-core.sh;

## AnyKernel Install
dump_boot;
    
	ui_print " "; ui_print "Welcome to the Krispy Kernel, have a nice day!";

write_boot;
## End Boot Install