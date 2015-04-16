# SYNOPSIS
#
#   AX_PROG_LXC_CHECKCONFIG([ACTION-IF-NOT-FOUND])
#
# DESCRIPTION
#
#   This macro searches for the lxc-checkconfig application and sets the variable
#   LXC_CHECKCONFIG to its absolute name if it is found and 'no' otherwise. If
#   ACTION-IF-NOT-FOUND is not specified, configure will fail when the program
#   is not found.
#
#   Example:
#
#     AX_PROG_LXC_CHECKCONFIG()
#     AX_PROG_LXC_CHECKCONFIG([lxc_checkconfig_available="no"])
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

AC_DEFUN([AX_PROG_LXC_CHECKCONFIG], [
  AC_PATH_PROG(LXC_CHECKCONFIG, [lxc-checkconfig], no)
  if test "x$LXC_CHECKCONFIG" = "xno"; then
    ifelse($#, 0,
        [AC_MSG_ERROR([Unable to find the lxc-checkconfig application])],
        $1)
  fi
])
