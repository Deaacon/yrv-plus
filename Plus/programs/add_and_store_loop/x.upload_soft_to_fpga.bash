#!/usr/bin/env bash
set -Eeuo pipefail  # See the meaning in scripts/README.md
hex_file=program.mem32
. "$(readlink -f $(dirname $0))/../../scripts/upload_soft_to_fpga.source.bash"
