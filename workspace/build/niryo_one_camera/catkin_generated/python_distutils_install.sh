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

echo_and_run cd "/home/pparekh/Documents/4998/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_camera"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/pparekh/Documents/4998/robotManipResearch/workspace/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/pparekh/Documents/4998/robotManipResearch/workspace/install/lib/python3/dist-packages:/home/pparekh/Documents/4998/robotManipResearch/workspace/build/niryo_one_camera/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pparekh/Documents/4998/robotManipResearch/workspace/build/niryo_one_camera" \
    "/usr/bin/python3" \
    "/home/pparekh/Documents/4998/robotManipResearch/workspace/src/niryo_one_ros/niryo_one_camera/setup.py" \
     \
    build --build-base "/home/pparekh/Documents/4998/robotManipResearch/workspace/build/niryo_one_camera" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/pparekh/Documents/4998/robotManipResearch/workspace/install" --install-scripts="/home/pparekh/Documents/4998/robotManipResearch/workspace/install/bin"
