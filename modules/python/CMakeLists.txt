# ----------------------------------------------------------------------------
#  CMake file for python support
# ----------------------------------------------------------------------------

ocv_module_disable_(python3)

if(__disable_python2 AND __disable_python3)
  return()
endif()

add_subdirectory(python2)
add_subdirectory(python3)
