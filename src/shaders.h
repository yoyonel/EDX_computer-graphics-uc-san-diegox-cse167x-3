#include <iostream>
#include <string>

#ifndef __INCLUDESHADERS 
#define __INCLUDESHADERS 

// OSX systems need their own headers
#ifdef __APPLE__
#include <OpenGL/gl3.h>
#include <OpenGL/glext.h>
#include <GLUT/glut.h>
#else
#ifdef __USE_GLFW3__
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#else
#include <GL/glew.h>
#include <GL/glut.h>
#endif
#endif

std::string textFileRead (const char * filename) ;
void programerrors (const GLint program) ;
void shadererrors (const GLint shader) ;
GLuint initshaders (GLenum type, const char * filename) ;
GLuint initprogram (GLuint vertexshader, GLuint fragmentshader) ;

#endif 
