include(../Config.pri)

QT += quick
QT += script
CONFIG += staticlib
#CONFIG += unity_build

TARGET = QtnPropertyCore
TEMPLATE = lib
VERSION = 1.0.0


CONFIG(staticlib) {
  DEFINES += STATICLIB
}
DEFINES += QTN_PE_CORE_LIBRARY

unity_build: SOURCES += QtnCoreUnity.cpp
else: SOURCES += PropertyBase.cpp \
    Property.cpp \
    PropertySet.cpp \
    Enum.cpp \
    QObjectPropertySet.cpp \
    Core/PropertyBool.cpp \
    Core/PropertyInt.cpp \
    Core/PropertyUInt.cpp \
    Core/PropertyFloat.cpp \
    Core/PropertyDouble.cpp \
    Core/PropertyQString.cpp \
    Core/PropertyQRect.cpp \
    Core/PropertyEnum.cpp \
    Core/PropertyEnumFlags.cpp \
    Core/PropertyQSize.cpp \
    Core/PropertyQPoint.cpp \
    GUI/PropertyQColor.cpp \
    GUI/PropertyQPen.cpp \
    GUI/PropertyButton.cpp \
    GUI/PropertyQFont.cpp

HEADERS += CoreAPI.h\
    PropertyBase.h \
    Property.h\
    PropertySet.h\
    Enum.h\
    QObjectPropertySet.h \
    PropertyCore.h \
    PropertyGUI.h \
    Auxiliary/PropertyTemplates.h \
    Auxiliary/PropertyMacro.h \
    Auxiliary/PropertyAux.h \
    Auxiliary/PropertyDelegateInfo.h \
    Core/PropertyBool.h \
    Core/PropertyInt.h \
    Core/PropertyUInt.h \
    Core/PropertyFloat.h \
    Core/PropertyDouble.h \
    Core/PropertyQString.h \
    Core/PropertyQRect.h \
    Core/PropertyEnum.h \
    Core/PropertyEnumFlags.h \
    Core/PropertyQSize.h \
    Core/PropertyQPoint.h \
    GUI/PropertyQColor.h \
    GUI/PropertyQPen.h \
    GUI/PropertyButton.h \
    GUI/PropertyQFont.h
