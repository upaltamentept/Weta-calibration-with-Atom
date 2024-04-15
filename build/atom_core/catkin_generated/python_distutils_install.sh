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

echo_and_run cd "/home/pedro/ros/workspaces/atom/src/atom/atom_core"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/pedro/ros/workspaces/atom/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/pedro/ros/workspaces/atom/install/lib/python3/dist-packages:/home/pedro/ros/workspaces/atom/build/atom_core/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pedro/ros/workspaces/atom/build/atom_core" \
    "/usr/bin/python3" \
    "/home/pedro/ros/workspaces/atom/src/atom/atom_core/setup.py" \
     \
    build --build-base "/home/pedro/ros/workspaces/atom/build/atom_core" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/pedro/ros/workspaces/atom/install" --install-scripts="/home/pedro/ros/workspaces/atom/install/bin"
