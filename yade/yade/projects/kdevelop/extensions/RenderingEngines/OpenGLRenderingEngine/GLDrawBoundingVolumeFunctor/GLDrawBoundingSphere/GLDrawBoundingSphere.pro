# File generated by kdevelop's qmake manager. 
# ------------------------------------------- 
# Subdir relative project main directory: ./extensions/RenderingEngines/OpenGLRenderingEngine/GLDrawBoundingVolumeFunctor/GLDrawBoundingSphere
# Target is a library:  

LIBS += -lBoundingSphere \
        -rdynamic 
INCLUDEPATH = $(YADEINCLUDEPATH) 
MOC_DIR = $(YADECOMPILATIONPATH) 
UI_DIR = $(YADECOMPILATIONPATH) 
OBJECTS_DIR = $(YADECOMPILATIONPATH) 
QMAKE_LIBDIR = ../../../../../plugins/Body/BoundingVolume/BoundingSphere/$(YADEDYNLIBPATH) \
               ../../../../../plugins/Geometry/BoundingVolume/BoundingSphere/$(YADEDYNLIBPATH) \
               $(YADEDYNLIBPATH) 
QMAKE_CXXFLAGS_RELEASE += -lpthread \
                          -pthread 
QMAKE_CXXFLAGS_DEBUG += -lpthread \
                        -pthread 
DESTDIR = $(YADEDYNLIBPATH) 
CONFIG += debug \
          warn_on \
          dll 
TEMPLATE = lib 
HEADERS += GLDrawBoundingSphere.hpp 
SOURCES += GLDrawBoundingSphere.cpp 
