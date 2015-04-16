# SYNOPSIS
#
#   AX_PROG_LXC_CGROUP([ACTION-IF-NOT-FOUND])
#
# DESCRIPTION
#
#   This macro searches for the lxc-cgroup application and sets the variable
#   LXC_CGROUP to its absolute name if it is found and 'no' otherwise. If
#   ACTION-IF-NOT-FOUND is not specified, configure will fail when the program
#   is not found.
#
#   Example:
#
#     AX_PROG_LXC_CGROUP()
#     AX_PROG_LXC_CGROUP([lxc_cgroup_available="no"])
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

AC_DEFUN([AX_PROG_LXC_CGROUP], [
  AC_PATH_PROG(LXC_CGROUP, [lxc-cgroup], no)
  if test "x$LXC_CGROUP" = "xno"; then
    ifelse($#, 0,
        [AC_MSG_ERROR([Unable to find the lxc-cgroup application])],
        $1)
  fi
])
