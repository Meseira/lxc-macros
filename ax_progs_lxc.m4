# SYNOPSIS
#
#   AX_PROGS_LXC()
#
# DESCRIPTION
#
#   This macro searches for all LXC applications by calling the respective
#   macros. Configure will fail if one of the programs is not found.
#
#   Example:
#
#     AX_PROGS_LXC()
#
# LICENSE
#
#   Copyright (c) 2015 Xavier Gendre <gendre.reivax@gmail.com>
#
#   Copying and distribution of this file, with or without modification, are
#   permitted in any medium without royalty provided the copyright notice
#   and this notice are preserved. This file is offered as-is, without any
#   warranty.

# serial 1

AC_DEFUN([AX_PROGS_LXC], [
  AX_PROG_LXC_ATTACH
  AX_PROG_LXC_AUTOSTART
  AX_PROG_LXC_CGROUP
  AX_PROG_LXC_CHECKCONFIG
  AX_PROG_LXC_CLONE
  AX_PROG_LXC_CONFIG
  AX_PROG_LXC_CONSOLE
  AX_PROG_LXC_CREATE
  AX_PROG_LXC_DESTROY
  AX_PROG_LXC_DEVICE
  AX_PROG_LXC_EXECUTE
  AX_PROG_LXC_FREEZE
  AX_PROG_LXC_INFO
  AX_PROG_LXC_LS
  AX_PROG_LXC_MONITOR
  AX_PROG_LXC_SNAPSHOT
  AX_PROG_LXC_START
  AX_PROG_LXC_START_EPHEMERAL
  AX_PROG_LXC_STOP
  AX_PROG_LXC_UNFREEZE
  AX_PROG_LXC_UNSHARE
  AX_PROG_LXC_USERNSEXEC
  AX_PROG_LXC_WAIT
])
