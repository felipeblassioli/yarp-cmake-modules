# Copyright: (C) 2009 RobotCub Consortium
# Authors: Giorgio Metta, Lorenzo Natale
# CopyPolicy: Released under the terms of the GNU GPL v2.0.

# Creates:
# GTKMM_INCLUDE_DIR   - Directories to include to use GTKMM
# GTKMM_LINK_FLAGS    - Files to link against to use GTKMM
# GTKMM_LINK_DIR      - Directories containing libraries to use GTKMM
# GtkMM_FOUND         - If false, don't try to use GTKMM

# gtkmm and libglademm seem to be coupled in FindGtkMMWin32.cmake
# so mirror that behavior here

INCLUDE(FindPkgConfig)

if(PKG_CONFIG_FOUND)
  pkg_check_modules(GtkMM gtkmm-2.4)
#  pkg_check_modules(GtkMM libglademm-2.4)
#  pkg_check_modules(GtkMM gthread-2.0)
#  PKGCONFIG(gtkmm-2.4 GTKMM_INCLUDE_DIR GTKMM_LINK_DIR GTKMM_LINK_FLAGS GTKMM_C_FLAGS)
#  PKGCONFIG(libglademm-2.4 GLADE_INCLUDE_DIR GLADE_LINK_DIR GLADE_LINK_FLAGS GLADE_C_FLAGS)
#  PKGCONFIG(gthread-2.0 GTHREAD_INCLUDE_DIR GTHREAD_LINK_DIR GTHREAD_LINK_FLAGS GTHREAD_C_FLAGS)
ENDIF(PKG_CONFIG_FOUND)

#remove once finished debugging
MESSAGE(STATUS "GtkMM libraries: ${GtkMM_LIBRARIES}")
MESSAGE(STATUS "GtkMM include directories: ${GtkMM_INCLUDE_DIRS}")

#IF (GLADE_LINK_FLAGS)
#  MESSAGE(STATUS " pkg-config found glade")
#  IF (GTKMM_LINK_FLAGS)
#    SET(GTKMM_INCLUDE_DIR ${GTKMM_INCLUDE_DIR} ${GLADE_INCLUDE_DIR})
#    SET(GTKMM_LINK_FLAGS ${GTKMM_LINK_FLAGS} ${GLADE_LINK_FLAGS})
#    SET(GTKMM_LINK_DIR ${GTKMM_LINK_DIR} ${GLADE_LINK_DIR})
#    SET(GTKMM_C_FLAGS ${GTKMM_C_FLAGS} ${GLADE_C_FLAGS})
#  ENDIF (GTKMM_LINK_FLAGS)
#ELSE (GLADE_LINK_FLAGS)
#  MESSAGE(STATUS " pkg-config could not find glade")
#ENDIF (GLADE_LINK_FLAGS)

#IF (GTHREAD_LINK_FLAGS)
#  MESSAGE(STATUS " pkg-config found gthread")
#  IF (GTKMM_LINK_FLAGS)
#    SET(GTKMM_INCLUDE_DIR ${GTKMM_INCLUDE_DIR} ${GTHREAD_INCLUDE_DIR})
#    SET(GTKMM_LINK_FLAGS ${GTKMM_LINK_FLAGS} ${GTHREAD_LINK_FLAGS})
#    SET(GTKMM_LINK_DIR ${GTKMM_LINK_DIR} ${GTHREAD_LINK_DIR})
#    SET(GTKMM_C_FLAGS ${GTKMM_C_FLAGS} ${GTHREAD_C_FLAGS})
#  ENDIF (GTKMM_LINK_FLAGS)
#ELSE (GTHREAD_LINK_FLAGS)
#  MESSAGE(STATUS " pkg-config could not find gthread")
#ENDIF (GTHREAD_LINK_FLAGS)

#IF (GTKMM_LINK_FLAGS)
#  MESSAGE(STATUS " pkg-config found gtkmm")
#  SET(GtkMM_FOUND TRUE)
#  SET(GTKMM_LINK_FLAGS ${GTKMM_LINK_DIR} ${GTKMM_LINK_FLAGS})
#ELSE (GTKMM_LINK_FLAGS)
#  MESSAGE(STATUS " pkg-config could not find gtkmm")
#  SET(GtkMM_FOUND FALSE)
#ENDIF (GTKMM_LINK_FLAGS)


#IF (GtkMM_FOUND)
#  MESSAGE(STATUS GTKMM_INCLUDE_DIR ${GTKMM_INCLUDE_DIR})
#  MESSAGE(STATUS GTKMM_LINK_FLAGS ${GTKMM_LINK_FLAGS})
#  MESSAGE(STATUS GTKMM_C_FLAGS ${GTKMM_C_FLAGS})
#ENDIF (GtkMM_FOUND)

