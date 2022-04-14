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

echo_and_run cd "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_modbus"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/andrew/robotManipResearch/workspace/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/andrew/robotManipResearch/workspace/install/lib/python3/dist-packages:/home/andrew/robotManipResearch/workspace/build/niryo_one_modbus/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/andrew/robotManipResearch/workspace/build/niryo_one_modbus" \
    "/usr/bin/python3" \
    "/home/andrew/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_modbus/setup.py" \
     \
    build --build-base "/home/andrew/robotManipResearch/workspace/build/niryo_one_modbus" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/andrew/robotManipResearch/workspace/install" --install-scripts="/home/andrew/robotManipResearch/workspace/install/bin"