Standalone OpenMETA Visualizer Package Export
=============================================

This repository provides visualizer package export for OpenMETA versions prior
to 0.23.0.  This functionality is built into OpenMETA 0.23.0 and later.

These scripts add export functionality on a per-user basis, so admin rights are
not required to run `install.cmd` and `uninstall.cmd`.

Prerequisites
-------------

  * OpenMETA

Installing
----------

  * Run `install.cmd` from this directory.

Uninstalling
------------

  * Run `uninstall.cmd` from this directory.

Usage
-----

Visualizer packages are exported from the OpenMETA Results Browser.  To export
a visualizer package, open the Results Browser, select a PET to export on the
PET tab, click the arrow beside "Launch in OpenMETA Visualizer", and choose
"Export Visualizer Package (Standalone)".  Choose a name and location for the
exported package when prompted.

The exported ZIP file contains PET results and artifacts and may be shared with
other users.  To use this exported package, first install either OpenMETA or the
OpenMETA Visualizer (https://github.com/metamorph-inc/openmeta-visualizer/releases),
extract the ZIP file to a location of your choice, and run `launch.cmd`.