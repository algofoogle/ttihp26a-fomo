#!/bin/bash

if [ ! -d ./tt ]; then
    echo "ABORTING as ./tt/ does not exist yet."
    echo "See the tt-support-tools step of: https://tinytapeout.com/guides/local-hardening/"
    echo "Typically, you'd run: git clone https://github.com/TinyTapeout/tt-support-tools tt"
    #NOTE: tt-support-tools seems to now use the 'main' branch for TTIHP26a:
    # https://github.com/TinyTapeout/tt-gds-action/blob/23e23ada602f88c22e50d7083327ba5c5ced6102/custom_gds/action.yml#L35
    # ...if it didn't, you'd want to add `--branch ttihp26a` or whatever.
    return 1
fi

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "WARNING: It looks like you ran $0 directly."
    echo "NORMALLY you should instead run: source $0"
    echo "MAYBE you want to give that another try?"
fi

# Expects Anton's pdk() function:
pdk ihp

# The following parameters are from:
# https://tinytapeout.com/guides/local-hardening/#4-set-up-environment-variables
# but can also be verified against:
# https://github.com/TinyTapeout/tt-gds-action/blob/ttihp25b/action.yml

export TTPYTHON=python3.12
export TTPROMPT=ttihp26a
export TTTOOLS=$HOME/ttsetup@$TTPROMPT
mkdir -p "$TTTOOLS/pdk"
echo -n "*** WARNING ***: PDK_ROOT overridden. Was: $PDK_ROOT ; Is: "
export PDK_ROOT=$TTTOOLS/pdk
echo $PDK_ROOT
export PDK=ihp-sg13g2
export TT_ARGS=--ihp
export LIBRELANE_TAG=3.0.0rc1 # ttihp-verilog-template uses 3.0.0.dev44: https://github.com/TinyTapeout/ttihp-verilog-template/blob/b087b0ad3b7e39d4678c3d441ecfcf9ed926ec01/.github/workflows/gds.yaml#L20
# export OPENLANE_IMAGE_OVERRIDE=ghcr.io/tinytapeout/openlane2:ihp-v3.0.0.dev23

# Mangling of https://github.com/TinyTapeout/tt-gds-action/blob/ac4c7934481e7c5fb9afa202a72a14025e78e13f/action.yml#L122
export LINTER_LOG_BASE="runs/manual/*-verilator-lint/verilator-lint.log"

export VENV_DIR="$TTTOOLS/venv"
export VENV_CMD="$VENV_DIR/bin/activate"
if [ ! -e "$VENV_CMD" ]; then
    echo "*** NOTE: Venv $VENV_CMD doesn't exist; creating it..."
    $TTPYTHON -m venv --prompt "$TTPROMPT" "$VENV_DIR"
    echo "DONE."
    cat <<EOH
*** NOTE: You probably now also want to run:
  python3 -m pip install -r tt/requirements.txt
  python3 -m pip install librelane==\$LIBRELANE_TAG
EOH
fi
echo "Activating VENV..."
source "$VENV_CMD"
echo "NOTE: If prompt doesn't include '($TTPROMPT)' then make sure you run this script via 'source'"

