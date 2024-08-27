#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool_utils"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/install/lib/python3/dist-packages:/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/build" \
    "/usr/bin/python3" \
    "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/src/robosapiens_tool_utils/setup.py" \
     \
    build --build-base "/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/build/robosapiens_tool_utils" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/install" --install-scripts="/home/thodoris/gitv2/Robosapiens_Active_Camera_Selection/catkin_ws/install/bin"
