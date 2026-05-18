#!/bin/sh
# Helper script to rebuild all the Bibles from USFM to simplified Accordance format
# The .acc file is a text file in a simple format with one verse per line.

# Assumes if you have checked out ~/lrl-bible-translation-engine,
# cd ~
# git clone git@github.com:postiffm/usfmparse.git
# cd usfmparse
# Set it up according to README.md, something like this:
# python3 -m venv .usfmparse
# pip install -r requirements.txt
# source .usfmparse/bin/activate
# (maybe necessary: pip install -e .)
# cd ~/lrl-bible-translation-engine/bibles

set -v
SCRIPT="python3 -m usfmtools.usfmToAccordance --no-para"
$SCRIPT bsb_usfm/*.SFM > bsb.acc
$SCRIPT byz_usfm/*.usfm > byz.acc
$SCRIPT engasv_usfm/*.usfm > asv.acc
$SCRIPT engkjv_usfm/*.usfm > kjv.acc
$SCRIPT engmtv_usfm/*.SFM > emtv.acc
$SCRIPT engweb_usfm/*.usfm > engweb.acc
$SCRIPT pickeringfamily35nt_usfm/*.usfm > pickering.acc
$SCRIPT robinsonpierpontmt_usfm/*.usfm > robpier.acc
$SCRIPT sblgnt_usfm/*.sfm > sblgnt.acc
$SCRIPT solidrockhebrew/*.sfm > solidrockhebrew.acc
$SCRIPT unfoldingWordHebrew/*.usfm > unfoldingwordhebrew.acc
