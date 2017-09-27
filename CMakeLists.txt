cmake_minimum_required(VERSION 2.8)

project(mytest3)

add_executable(
	mytest3 
	src/mytest3.cpp
	src/shaders.cpp 
	src/shaders.h 
	src/geometry3.h
	shaders/light.frag.glsl
	shaders/light.vert.glsl
)

# Add module path
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)
find_package(GLEW REQUIRED)
find_package(GLM REQUIRED)
# https://raw.githubusercontent.com/myint/perceptualdiff/master/FindFreeImage.cmake
find_package(FreeImage REQUIRED)

include_directories( 
	${OPENGL_INCLUDE_DIRS}
	${GLUT_INCLUDE_DIRS}
	${GLEW_INCLUDE_DIRS}
	${GLM_INCLUDE_DIRS}
	${FREEIMAGE_INCLUDE_DIRS}
)

# MESSAGE(${OPENGL_LIBRARIES})

target_link_libraries(
	mytest3 
	${OPENGL_LIBRARIES} 
	${GLUT_LIBRARY} 
	${GLEW_LIBRARIES}
	${FREEIMAGE_LIBRARIES}
)
