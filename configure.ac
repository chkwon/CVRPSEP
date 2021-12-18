#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT(CVRPSEP, 0.1, chkwon@gmail.com)
AC_CONFIG_SRCDIR([src/binpack.h])
AC_CONFIG_HEADERS([config.h])

AC_ENABLE_SHARED
AC_DISABLE_STATIC

AM_INIT_AUTOMAKE([-Wall -Werror foreign])
AC_CONFIG_FILES([Makefile src/Makefile]) 


# Checks for programs.
AC_PROG_CC
LDFLAGS="-no-undefined $LDFLAGS"
AC_SUBST([LDFLAGS])

AM_PROG_AR
LT_INIT 

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.
AC_FUNC_MALLOC
AC_FUNC_REALLOC

AC_OUTPUT
