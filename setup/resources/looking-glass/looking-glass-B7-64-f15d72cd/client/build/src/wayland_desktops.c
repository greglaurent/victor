#include "interface/desktop.h"

#include <stddef.h>

extern struct WL_DesktopOps WLD_xdg;
extern struct WL_DesktopOps WLD_libdecor;

const struct WL_DesktopOps * WL_Desktops[] =
{
  &WLD_xdg,
  &WLD_libdecor,
  NULL
};