file(GLOB os_dirs "*")
foreach(dir ${os_dirs})
    if(EXISTS ${dir}/CMakeLists.txt)
        add_subdirectory(${dir})
    endif()
endforeach()

if(platform)
    if(UPDATE_IMAGELIST STREQUAL "ON")
        add_custom_target(build_${platform} ALL COMMAND ${CMAKE_SOURCE_DIR}/script/update-imagelist.sh ${DOCKER_PREFIX} ${platform} WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
    endif()
endif()
