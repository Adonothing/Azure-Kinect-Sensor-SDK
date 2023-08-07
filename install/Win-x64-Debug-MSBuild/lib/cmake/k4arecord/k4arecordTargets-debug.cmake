#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "k4a::k4arecord" for configuration "Debug"
set_property(TARGET k4a::k4arecord APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(k4a::k4arecord PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/k4arecord.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/k4arecord.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS k4a::k4arecord )
list(APPEND _IMPORT_CHECK_FILES_FOR_k4a::k4arecord "${_IMPORT_PREFIX}/lib/k4arecord.lib" "${_IMPORT_PREFIX}/bin/k4arecord.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
