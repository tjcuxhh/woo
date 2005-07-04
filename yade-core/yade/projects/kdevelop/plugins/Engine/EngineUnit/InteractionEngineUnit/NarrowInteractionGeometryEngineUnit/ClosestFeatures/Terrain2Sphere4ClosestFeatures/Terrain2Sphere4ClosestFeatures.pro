# File generated by kdevelop's qmake manager. 
# ------------------------------------------- 
# Subdir relative project main directory: ./plugins/Engine/EngineUnit/InteractionEngineUnit/NarrowInteractionGeometryEngineUnit/ClosestFeatures/Terrain2Sphere4ClosestFeatures
# Target is a library:  

LIBS += -lInteractionGeometryMetaEngine \
        -lyade-lib-wm3-math \
        -lyade-lib-multimethods \
        -lyade-lib-computational-geometry \
        -lTerrain \
        -lClosestFeatures \
        -lSphere \
        -rdynamic 
INCLUDEPATH += $(YADEINCLUDEPATH) 
MOC_DIR = $(YADECOMPILATIONPATH) 
UI_DIR = $(YADECOMPILATIONPATH) 
OBJECTS_DIR = $(YADECOMPILATIONPATH) 
QMAKE_LIBDIR = ../../../../../../../plugins/Engine/MetaEngine/InteractionMetaEngine/NarrowInteractionGeometryMetaEngine/InteractionGeometryMetaEngine/$(YADEDYNLIBPATH) \
               /usr/local/lib/yade/yade-libs/ \
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
HEADERS += Terrain2Sphere4ClosestFeatures.hpp 
SOURCES += Terrain2Sphere4ClosestFeatures.cpp 
