MACCHINA_CONFIG="${SNAP}/etc/macchina-snap.properties"
MACCHINA_USER_CONFIG="$SNAP_USER_DATA/etc/macchina.properties"
MACCHINA_CODE_CACHE="$SNAP_USER_DATA/cache/lib"

mkdir -p "$SNAP_USER_DATA/etc"
mkdir -p "$SNAP_USER_DATA/log"
mkdir -p "$SNAP_USER_DATA/run"
mkdir -p "$SNAP_USER_DATA/lib/bundles"
mkdir -p "$MACCHINA_CODE_CACHE"

if [ -f "$MACCHINA_USER_CONFIG" ] ; then
  userconfig="--config=$MACCHINA_USER_CONFIG"
fi

export LD_LIBRARY_PATH="$MACCHINA_CODE_CACHE:$LD_LIBRARY_PATH"
"$SNAP/bin/macchina" --config="$MACCHINA_CONFIG" $userconfig --daemon --pidfile="${SNAP_USER_DATA}/run/macchina.pid" "$@"

