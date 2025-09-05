TARGET := iphone:clang:latest:15.4

THEOS_DEVICE_IP = 192.168.1.119

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libfmdb

libfmdb_FILES = src/fmdb/FMDatabase.m src/fmdb/FMDatabaseAdditions.m src/fmdb/FMDatabasePool.m src/fmdb/FMDatabaseQueue.m src/fmdb/FMResultSet.m src/extra/fts3/FMDatabase+FTS3.m src/extra/fts3/FMTokenizers.m src/extra/InMemoryOnDiskIO/FMDatabase+InMemoryOnDiskIO.m
libfmdb_CFLAGS = -fobjc-arc -I./src -I./src/fmdb
libfmdb_INSTALL_PATH = /usr/local/lib

include $(THEOS_MAKE_PATH)/library.mk
