# SYNOPSIS
#
#   AX_PROG_LXC_AUTOSTART([ACTION-IF-NOT-FOUND])
#
# DESCRIPTION
#
#   This macro searches for the lxc-autostart application and sets the variable
#   LXC_AUTOSTART to its absolute name if it is found and 'no' otherwise. If
#   ACTION-IF-NOT-FOUND is not specified, configure will fail when the program
#   is not found.
#
#   Example:
#
#     AX_PROG_LXC_AUTOSTART()
#     AX_PROG_LXC_AUTOSTART([lxc_autostart_available="no"])
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

AC_DEFUN([AX_PROG_LXC_AUTOSTART], [
  AC_PATH_PROG(LXC_AUTOSTART, [lxc-autostart], no)
  if test "x$LXC_AUTOSTART" = "xno"; then
    ifelse($#, 0,
        [AC_MSG_ERROR([Unable to find the lxc-autostart application])],
        $1)
  fi
])
