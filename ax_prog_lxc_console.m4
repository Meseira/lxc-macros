# SYNOPSIS
#
#   AX_PROG_LXC_CONSOLE([ACTION-IF-NOT-FOUND])
#
# DESCRIPTION
#
#   This macro searches for the lxc-console application and sets the variable
#   LXC_CONSOLE to its absolute name if it is found and 'no' otherwise. If
#   ACTION-IF-NOT-FOUND is not specified, configure will fail when the program
#   is not found.
#
#   Example:
#
#     AX_PROG_LXC_CONSOLE()
#     AX_PROG_LXC_CONSOLE([lxc_console_available="no"])
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

AC_DEFUN([AX_PROG_LXC_CONSOLE], [
  AC_PATH_PROG(LXC_CONSOLE, [lxc-console], no)
  if test "x$LXC_CONSOLE" = "xno"; then
    ifelse($#, 0,
        [AC_MSG_ERROR([Unable to find the lxc-console application])],
        $1)
  fi
])
