#!/usr/bin/env bash
#
ls -la /opt/091224-ptm | awk '{print $1" "$9}'
chmod ugo+x /opt/091224-ptm/*.sh
