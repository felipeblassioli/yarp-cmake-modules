
# hacked together for unix by Paul Fitzpatrick
# updated to work on windows by Hatice Kose-Bagci

IF(PKGCONFIG_EXECUTABLE)
	PKGCONFIG(portaudio-2.0 PORTAUDIO_INCLUDE_DIR PORTAUDIO_LINK_DIRECTORIES
			        PORTAUDIO_LIBRARIES PORTAUDIO_CFLAGS)
ENDIF(PKGCONFIG_EXECUTABLE)

IF (WIN32)
	FIND_LIBRARY(PORTAUDIO_LIBRARY NAMES portaudio_x86 PATHS C:/portaudio/build/msvc/Debug_x86)
	GET_FILENAME_COMPONENT(PORTAUDIO_LINK_DIRECTORIES ${PORTAUDIO_LIBRARY} PATH)
	FIND_PATH(PORTAUDIO_INCLUDE_DIR portaudio.h C:/portaudio/include)

	SET(PORTAUDIO_LIBRARIES ${PORTAUDIO_LIBRARY})
ENDIF (WIN32)

#message(STATUS "inc: -${PORTAUDIO_INCLUDE_DIR}")
#message(STATUS "link flags: -${PORTAUDIO_LINK_FLAGS}")
#message(STATUS "cflags: -${PORTAUDIO_CFLAGS}")
#message(STATUS "link dir: -${PORTAUDIO_LINK_DIR}")

IF (UNIX)
	IF (PORTAUDIO_LIBRARIES)
		SET(PortAudio_FOUND TRUE)
	ELSE (PORTAUDIO_LIBRARIES)
		SET(PortAudio_FOUND FALSE)
	ENDIF (PORTAUDIO_LIBRARIES)
ENDIF (UNIX)

IF (WIN32)
	IF (PORTAUDIO_LIBRARY)
		SET(PortAudio_FOUND TRUE)
	ELSE (PORTAUDIO_LIBRARY)
		SET(PortAudio_FOUND FALSE)
	ENDIF (PORTAUDIO_LIBRARY)
ENDIF (WIN32)
