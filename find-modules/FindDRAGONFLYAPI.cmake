# Copyright: (C) 2009 RobotCub Consortium
# Author: Lorenzo Natale
# CopyPolicy: Released under the terms of the GNU GPL v2.0.

# Created:
# DRAGONFLYAPI_INC_DIRS   - Directories to include to use dragonfly API
# DRAGONFLYAPI_LIB        - Default library to link against to use the dragonfly API
# DRAGONFLYAPI_FOUND      - If false, don't try to use dragonfly API

IF(NOT DRAGONFLYAPI_FOUND)
  IF(WIN32)
    SET(DRAGONFLYAPI_DIR $ENV{DRAGONFLYAPI_DIR} CACHE PATH "Path to DRAGONFLYAPI")

    FIND_LIBRARY(DRAGONFLYAPI_LIB FlyCapture2 ${DRAGONFLYAPI_DIR}/lib
								"C:\\Program Files\\Point Grey Research\\FlyCapture2\\lib")
    FIND_PATH(DRAGONFLYAPI_INC_DIRS FlyCapture2.h ${DRAGONFLYAPI_DIR}/include
								"C:\\Program Files\\Point Grey Research\\FlyCapture2\\include")
  ELSE(WIN32)  
	FIND_LIBRARY(lib_raw1394 raw1394)
	FIND_LIBRARY(lib_dc1394 dc1394)
	IF (lib_raw1394 AND lib_dc1394)
	  SET(DRAGONFLYAPI_LIB ${lib_raw1394} ${lib_dc1394})
	ENDIF (lib_raw1394 AND lib_dc1394)
	
  ENDIF (WIN32)

  MESSAGE(STATUS ${DRAGONFLYAPI_LIB} ${DRAGONFLYAPI_INC_DIRS})

  IF(DRAGONFLYAPI_LIB)
	IF(WIN32)
	  IF(DRAGONFLYAPI_INC_DIRS)
		SET(DRAGONFLYAPI_FOUND TRUE)
	  ELSE(DRAGONFLYAPI_INC_DIRS)
		SET(DRAGONFLYAPI_FOUND FALSE)
      ENDIF(DRAGONFLYAPI_INC_DIRS)
	ElSE(WIN32)
		SET(DRAGONFLYAPI_FOUND TRUE)
	ENDIF(WIN32)
  ELSE(DRAGONFLYAPI_LIB)
	SET(DRAGONFLYAPI_FOUND FALSE)
  ENDIF(DRAGONFLYAPI_LIB)
	
ENDIF(NOT DRAGONFLYAPI_FOUND)




