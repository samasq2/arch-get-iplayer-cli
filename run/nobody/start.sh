#!/bin/bash
# Script to download tv shows from BBC iPlayer

# loop over list of shows with scheduled sleep period
while true
do

        get_iplayer --pvr --profile-dir /config --output /data

        # if env variable SCHEDULE not defined then use default
        if [[ -z "${SCHEDULE}" ]]; then

                echo "[info] Env var SCHEDULE not defined, sleeping for 12 hours..."
                sleep 12h

        else

                echo "[info] Env var SCHEDULE defined, sleeping for ${SCHEDULE}..."
                sleep "${SCHEDULE}"

        fi

done
