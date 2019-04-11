% MyVirtualDirectory Base (1) Container Image Pages
% Tremolo Security, Inc.
% April 2019

# NAME
myvirtualdirectory-base \- MyVirtualDirectory Base RHEL Container

# DESCRIPTION

This image is a base image designed to be use with the JIB project

# USAGE

Only use this image as an input to the jib build process

## Logging

The standard for Docker images is to send all output to standard out.  The default log4j2.xml file is updated to push all output to standard out instead of the different log files.


# SECURITY IMPLICATIONS

MyVirtualDirectory runs unprivileged and without any ports below 1024.

# AUTHORS
Tremolo Security, Inc.