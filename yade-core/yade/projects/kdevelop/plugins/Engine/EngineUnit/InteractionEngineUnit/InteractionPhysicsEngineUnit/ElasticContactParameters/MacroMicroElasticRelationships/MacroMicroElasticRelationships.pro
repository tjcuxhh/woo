# File generated by kdevelop's qmake manager. 
# ------------------------------------------- 
# Subdir relative project main directory: ./plugins/Engine/EngineUnit/InteractionEngineUnit/InteractionPhysicsEngineUnit/ElasticContactParameters/MacroMicroElasticRelationships
# Target is a library:  

LIBS += -lInteractionPhysicsMetaEngine \
        -lSDECLinkPhysics \
        -lSDECLinkGeometry \
        -lElasticContactParameters \
        -lMacroMicroContactGeometry \
        -lBodyMacroParameters \
        -rdynamic 
INCLUDEPATH += $(YADEINCLUDEPATH) 
MOC_DIR = $(YADECOMPILATIONPATH) 
UI_DIR = $(YADECOMPILATIONPATH) 
OBJECTS_DIR = $(YADECOMPILATIONPATH) 
QMAKE_LIBDIR = ../../../../../../../plugins/Engine/MetaEngine/InteractionMetaEngine/InteractionPhysicsMetaEngine/InteractionPhysicsMetaEngine/$(YADEDYNLIBPATH) \
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
HEADERS += MacroMicroElasticRelationships.hpp 
SOURCES += MacroMicroElasticRelationships.cpp 
