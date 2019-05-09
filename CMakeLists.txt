cmake_minimum_required(VERSION 2.8.9)

project(ProjectCMake)
 
set(CMAKE_C_COMPILER "gcc")
 
#Bring the headers, such as Student.h into the project
#include_directories(sources/tools sources/ericsonj/embedded)
 
#Can manually add the sources using the set command as follows:
#set(SOURCES src/mainapp.cpp src/Student.cpp)
 
#However, the file(GLOB...) allows for wildcard additions:
file(GLOB_RECURSE SOURCES "sources/*.c")
file(GLOB_RECURSE HSDES "sources/*.h")

foreach(loop_var ${HSDES})
	get_filename_component(PARENT_DIR ${loop_var} DIRECTORY)
	include_directories(${PARENT_DIR})
endforeach(loop_var)

add_executable(prog ${SOURCES})