#!/bin/bash

# only run setup if needed
if [ -f /opt/exist-setup.cmd ]; then
  /bin/bash -l -c "expect -f /opt/exist-setup.cmd" && \
  mv /opt/exist-setup.cmd /opt/exist-setup-done.cmd && \
  rm -f '/opt/exist.jar'
fi

#Create default collection
if [ -n "$DEFAULT_COLLECTION" ]; then
cd "$EXIST_HOME" && \
./bin/client.sh -l -s -u admin -P $EXIST_PASSWORD << EOF 
mkcol $DEFAULT_COLLECTION
cd system/config/db
put /opt/collection.xconf
quit
EOF
fi

# start app
cd "$EXIST_HOME" && \
./bin/startup.sh 