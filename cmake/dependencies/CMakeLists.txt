####################
##  SWIG (WIN32)  ##
####################
if(WIN32 AND (BUILD_PYTHON OR BUILD_JAVA OR BUILD_CSHARP))
  message(STATUS "Adding CMake Subproject: Swig...")
  # Download and unpack swig at configure time
  configure_file(
    ${CMAKE_CURRENT_LIST_DIR}/swig.CMakeLists.txt
    ${CMAKE_CURRENT_BINARY_DIR}/swig-download/CMakeLists.txt)
  execute_process(
    COMMAND ${CMAKE_COMMAND} -G "${CMAKE_GENERATOR}" .
    RESULT_VARIABLE result
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/swig-download )
  if(result)
    message(FATAL_ERROR "CMake step for swig failed: ${result}")
  endif()

  execute_process(
    COMMAND ${CMAKE_COMMAND} --build .
    RESULT_VARIABLE result
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/swig-download )
  if(result)
    message(FATAL_ERROR "Build step for swig failed: ${result}")
  endif()

  set(SWIG_EXECUTABLE ${CMAKE_CURRENT_BINARY_DIR}/swig/swig.exe
    CACHE INTERNAL "swig.exe location" FORCE)
  message(STATUS "Adding CMake Subproject: Swig...DONE")
endif()

############
##  ZLIB  ##
############
if(BUILD_ZLIB)
  build_dependency(ZLIB)
endif()

##################
##  ABSEIL-CPP  ##
##################
if(BUILD_absl)
  build_dependency(abseil-cpp)
endif()

##############
##  GFLAGS  ##
##############
if(BUILD_gflags)
  build_dependency(gflags)
endif()

############
##  GLOG  ##
############
if(BUILD_glog)
  build_dependency(glog)
endif()

############
##  GLOG  ##
############
if(BUILD_Protobuf)
  build_dependency(Protobuf)
endif()

#################
##  Coinutils  ##
#################
if(BUILD_CoinUtils)
  build_dependency(CoinUtils)
endif()

###########
##  Osi  ##
###########
if(BUILD_Osi)
  build_dependency(Osi)
endif()

###########
##  Clp  ##
###########
if(BUILD_Clp)
  build_dependency(Clp)
endif()

###########
##  Cgl  ##
###########
if(BUILD_Cgl)
  build_dependency(Cgl)
endif()

###########
##  Cbc  ##
###########
if(BUILD_Cbc)
  build_dependency(Cbc)
endif()
