# SYNOPSIS
#
#   AX_PROG_LXC_EXECUTE([ACTION-IF-NOT-FOUND])
#
# DESCRIPTION
#
#   This macro searches for the lxc-execute application and sets the variable
#   LXC_EXECUTE to its absolute name if it is found and 'no' otherwise. If
#   ACTION-IF-NOT-FOUND is not specified, configure will fail when the program
#   is not found.
#
#   Example:
#
#     AX_PROG_LXC_EXECUTE()
#     AX_PROG_LXC_EXECUTE([lxc_execute_available="no"])
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

AC_DEFUN([AX_PROG_LXC_EXECUTE], [
  AC_PATH_PROG(LXC_EXECUTE, [lxc-execute], no)
  if test "x$LXC_EXECUTE" = "xno"; then
    ifelse($#, 0,
        [AC_MSG_ERROR([Unable to find the lxc-execute application])],
        $1)
  fi
])
