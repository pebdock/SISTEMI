#!/bin/bash
INDEX=1
while [[ "$(./parola.sh)" != "cacc" ]] ; do
	(( INDEX=$INDEX+1 ))
done
echo "cacc ${INDEX}"
