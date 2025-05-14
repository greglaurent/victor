# Uninstall file from https://gitlab.kitware.com/cmake/community/-/wikis/FAQ#can-i-do-make-uninstall-with-cmake

if(NOT EXISTS "/home/greg/Workspace/victor/setup/resources/looking-glass/looking-glass-B7-64-f15d72cd/host/build/install_manifest.txt")
  message(FATAL_ERROR "Cannot find install manifest: /home/greg/Workspace/victor/setup/resources/looking-glass/looking-glass-B7-64-f15d72cd/host/build/install_manifest.txt")
endif()

file(READ "/home/greg/Workspace/victor/setup/resources/looking-glass/looking-glass-B7-64-f15d72cd/host/build/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach(file ${files})
  message(STATUS "Uninstalling $ENV{DESTDIR}${file}")
  if(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
    exec_program(
      "/usr/bin/cmake" ARGS "-E remove \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
      )
    if(NOT "${rm_retval}" STREQUAL 0)
      message(FATAL_ERROR "Problem when removing $ENV{DESTDIR}${file}")
    endif()
  else(IS_SYMLINK "$ENV{DESTDIR}${file}" OR EXISTS "$ENV{DESTDIR}${file}")
    message(STATUS "File $ENV{DESTDIR}${file} does not exist.")
  endif()
endforeach()
