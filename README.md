# lxc-macros
Autoconf macros for LXC programs

This set of Autoconf macros allow to search for the various LXC applications and to check the current version of LXC.

For example, to search for `lxc-create`, you can use `AX_PROG_LXC_CREATE` in your `configure.ac`. To search for all LXC applications, deal with `AX_PROGS_LXC`. The macro `AX_LXC_VERSION` is devoted to make sure that LXC supports the version indicated.
