set(YCM_MODULES ACECheck.cmake
    ace_hash_test.cpp
    ace_test.cpp
    MacroExtractVersion.cmake
    MacroStandardFindModule.cmake)

install(FILES ${YCM_MODULES}
        DESTINATION share/YCM/modules)
