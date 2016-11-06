# macchina.io Snap

The files in this repository can be used to build a [Snap](http://snapcraft.io) package for [macchina.io](https://macchina.io).

When installed, macchina.io can be configured by creating a configuration file `$SNAP_USER_DATA/etc/macchina.properties`.
Additional bundles are installed into `$SNAP_USER_DATA/lib/bundles`. The log file can be found at `$SNAP_USER_DATA/log/macchina.log`.
The macchina.io server is started as daemon, so `$SNAP_USER_DATA` is usually `/root/snap/macchina-io/x1`.
 
This is a work-in-progress.
