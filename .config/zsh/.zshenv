# spark related stuff
export JAVA_HOME=/usr/lib/jvm/temurin-17-jdk
export ORACLE_HOME=/opt/instantclient_23_8
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ORACLE_HOME
export PATH=$PATH:$ORACLE_HOME
export LIBTORCH=/usr/local/libtorch
export LD_LIBRARY_PATH=${LIBTORCH}/lib

. "$HOME/.cargo/env"

# opencode
export PATH=/home/anand.dubey/.opencode/bin:$PATH

. "$HOME/.local/share/../bin/env"
