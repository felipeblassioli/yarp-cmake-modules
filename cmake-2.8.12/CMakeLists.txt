
# Files from CMake 2.8.12, available only if cmake is older
if(NOT CMAKE_MINIMUM_REQUIRED_VERSION VERSION_LESS 2.8.12)
    # Just a reminder to remove this when we change cmake version
    message(AUTHOR_WARNING "CMake minimum required version greater than 2.8.11. You can remove this folder")
endif()

if(CMAKE_VERSION VERSION_LESS 2.8.12)
    set(YCM_CMAKE_2_8_12_FILES Modules/FindGTK2.cmake
                               Modules/FindPackageHandleStandardArgs.cmake
                               Modules/FindPackageMessage.cmake
                               Modules/CMakeParseArguments.cmake
                               Modules/SelectLibraryConfigurations.cmake
                               Modules/FindFreetype.cmake
                               Modules/FindPkgConfig.cmake)
    install(FILES ${YCM_CMAKE_2_8_12_FILES}
            DESTINATION share/YCM/cmake-2.8.12/Modules)
endif()
