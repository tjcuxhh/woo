# File generated by kdevelop's qmake manager. 
# ------------------------------------------- 
# Subdir relative project main directory: ./Engine/EngineUnit/MacroMicroElasticRelationships
# Target is a library:  

LIBS += -lSDECLinkPhysics \
        -lSDECLinkGeometry \
        -lElasticContactParameters \
        -lMacroMicroContactGeometry \
        -lBodyMacroParameters \
        -lRigidBodyParameters \
        -lParticleParameters \
        -lInteractionPhysicsMetaEngine \
        -rdynamic 
INCLUDEPATH += ../../../DataClass/InteractionPhysics/SDECLinkPhysics \
               ../../../DataClass/InteractionPhysics/ElasticContactParameters \
               ../../../DataClass/InteractionGeometry/SDECLinkGeometry \
               ../../../DataClass/InteractionGeometry/MacroMicroContactGeometry \
               ../../../DataClass/PhysicalParameters/BodyMacroParameters 
QMAKE_LIBDIR = ../../../../../bin \
               ../../../../../bin \
               ../../../../../bin \
               ../../../../../bin \
               ../../../../../bin \
               /usr/local/lib/yade/yade-package-common/ \
               /usr/local/lib/yade/yade-libs/ 
QMAKE_CXXFLAGS_RELEASE += -lpthread \
                          -pthread 
QMAKE_CXXFLAGS_DEBUG += -lpthread \
                        -pthread 
DESTDIR = ../../../../../bin 
CONFIG += debug \
          warn_on \
          dll 
TEMPLATE = lib 
HEADERS += MacroMicroElasticRelationships.hpp 
SOURCES += MacroMicroElasticRelationships.cpp 
