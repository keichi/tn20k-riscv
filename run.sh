#!/bin/bash

GW=/Applications/GowinIDE.app/Contents/Resources/Gowin_EDA/IDE
export PATH="$GW/bin:$PATH"
export DYLD_LIBRARY_PATH="$GW/lib"
export DYLD_FRAMEWORK_PATH="$GW/lib"

gw_sh build.tcl
openFPGALoader -b tangnano20k impl/pnr/top.fs
