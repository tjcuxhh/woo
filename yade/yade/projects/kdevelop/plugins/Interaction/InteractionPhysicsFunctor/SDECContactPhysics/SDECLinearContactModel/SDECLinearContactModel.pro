# File generated by kdevelop's qmake manager. 
# ------------------------------------------- 
# Subdir relative project main directory: ./plugins/Interaction/InteractionPhysicsFunctor/SDECContactPhysics/SDECLinearContactModel
# Target is a library:  

LIBS += -lSDECContactPhysics \
        -lSDECContactGeometry \
        -lSDECParameters \
        -rdynamic 
INCLUDEPATH = $(YADEINCLUDEPATH) 
MOC_DIR = $(YADECOMPILATIONPATH) 
UI_DIR = $(YADECOMPILATIONPATH) 
OBJECTS_DIR = $(YADECOMPILATIONPATH) 
QMAKE_LIBDIR = ../../../../../plugins/Interaction/InteractionPhysics/SDECContactPhysics/$(YADEDYNLIBPATH) \
               ../../../../../plugins/Interaction/InteractionGeometry/SDECContactGeometry/$(YADEDYNLIBPATH) \
               ../../../../../plugins/Body/BodyPhysicalParameters/SDECParameters/$(YADEDYNLIBPATH) \
               ../../../../plugins/Body/SDECDiscreteElement/$(YADEDYNLIBPATH) \
               ../../../../plugins/Interaction/InteractionPhysics/SDECContactPhysics/$(YADEDYNLIBPATH) \
               ../../../../plugins/Interaction/InteractionGeometry/SDECContactGeometry/$(YADEDYNLIBPATH) \
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
HEADERS += SDECLinearContactModel.hpp 
SOURCES += SDECLinearContactModel.cpp 
