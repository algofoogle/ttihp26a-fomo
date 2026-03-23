#!/usr/bin/bash

if [ -z "$VIRTUAL_ENV" ]; then echo "VENV is not loaded. Did you remember to run: source ./env-ihp.sh"; exit 1; fi
if [ -z "$PDK_ROOT"    ]; then echo "PDK_ROOT isn't set. Did you remember to run: source ./env-ihp.sh"; exit 1; fi

rm -rf librelane/runs/manual
mkdir -p librelane/runs/manual
# python -m librelane --pdk-root "$PDK_ROOT" --docker-no-tty --dockerized --run-tag manual --force-run-dir librelane/runs/manual librelane/digital/config.json --design-dir .
/usr/bin/docker run --rm --name 06176796-90cc-46de-82cc-85191e76e449 -i --user 1000:1000 -v /home/anton:/home/anton -v /home/anton/ttsetup@ttihp26a/pdk:/home/anton/ttsetup@ttihp26a/pdk -e PDK_ROOT=/home/anton/ttsetup@ttihp26a/pdk/ciel/ihp-sg13g2/versions/cb7daaa8901016cf7c5d272dfa322c41f024931f -w /home/anton/projects/ttihp26a-fomo -e DISPLAY=:1 -v /tmp/.X11-unix:/tmp/.X11-unix --network host --security-opt seccomp=unconfined ghcr.io/librelane/librelane:3.0.0rc1 python3 -m librelane --pdk-root /home/anton/ttsetup@ttihp26a/pdk --pdk ihp-sg13g2 --run-tag manual --force-run-dir librelane/runs/manual librelane/digital/config.json
ls -aldh librelane/runs/manual/final/gds/*.gds
