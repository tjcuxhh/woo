# File generated by kdevelop's qmake manager. 
# ------------------------------------------- 
# Subdir relative project main directory: ./extensions/RenderingEngines/OpenGLRenderingEngine/GLDrawShadowVolumeFunctor/GLDrawBoxShadowVolume
# Target is a library:  

LIBS += -lBox \
        -lBody \
        -lRigidBodyParameters \
        -rdynamic 
INCLUDEPATH = $(YADEINCLUDEPATH) 
MOC_DIR = $(YADECOMPILATIONPATH) 
UI_DIR = $(YADECOMPILATIONPATH) 
OBJECTS_DIR = $(YADECOMPILATIONPATH) 
QMAKE_LIBDIR = ../../../../../plugins/Body/GeometricalModel/Box/$(YADEDYNLIBPATH) \
               ../../../../../yade/Body/Body/$(YADEDYNLIBPATH) \
               ../../../../../plugins/Body/BodyPhysicalParameters/RigidBodyParameters/$(YADEDYNLIBPATH) \
               ../../../../../plugins/Geometry/GeometricalModel/Box/$(YADEDYNLIBPATH) \
               ../../../../../yade/Body/$(YADEDYNLIBPATH) \
               ../../../../../yade/Geometry/$(YADEDYNLIBPATH) \
               ../../../../../plugins/Body/BodyPhysicalParameters/RigidBody/$(YADEDYNLIBPATH) \
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
HEADERS += GLDrawBoxShadowVolume.hpp 
SOURCES += GLDrawBoxShadowVolume.cpp 
