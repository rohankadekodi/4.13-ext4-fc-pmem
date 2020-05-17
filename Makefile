#
# Makefile for the linux ext4-filesystem routines.
#

obj-m += orig_ext4_fc.o

orig_ext4_fc-y	:= acl.o balloc.o bitmap.o block_validity.o dir.o ext4_jbd2.o extents.o \
		extents_status.o file.o fsmap.o fsync.o hash.o ialloc.o \
		indirect.o inline.o inode.o ioctl.o mballoc.o migrate.o \
		mmp.o move_extent.o namei.o page-io.o readpage.o resize.o \
		stats.o super.o symlink.o sysfs.o xattr.o xattr_security.o xattr_trusted.o xattr_user.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=`pwd`

clean:
	make -C /lib/modules/$(shell uname -r)/build M=`pwd` clean
