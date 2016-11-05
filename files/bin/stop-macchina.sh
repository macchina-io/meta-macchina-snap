if [ -f "${SNAP_USER_DATA}/run/macchina.pid" ] ; then
	pid=`cat "${SNAP_USER_DATA}/run/macchina.pid"`
	kill $pid
fi

