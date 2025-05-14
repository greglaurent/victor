#include "interface/capture.h"

#include <stddef.h>

extern CaptureInterface Capture_XCB;
extern CaptureInterface Capture_pipewire;

const CaptureInterface * CaptureInterfaces[] =
{
  &Capture_XCB,
  &Capture_pipewire,
  NULL
};