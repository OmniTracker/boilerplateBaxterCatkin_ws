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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/baxter_interface"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/install/lib/python2.7/dist-packages:/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/build" \
    "/usr/bin/python" \
    "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/src/baxter_interface/setup.py" \
    build --build-base "/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/build/baxter_interface" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/install" --install-scripts="/home/h2r/Desktop/SummerProject/demoStock/catkin_ws/install/bin"
