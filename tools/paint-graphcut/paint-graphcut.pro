DRISHTI_DEFINES = RENDERER

TEMPLATE = app

RESOURCES = paint.qrc

TARGET = 
DEPENDPATH += .

QT += opengl
QT += widgets core gui xml

CONFIG += release

DESTDIR = ../../bin

TARGET = drishtipaint

INCLUDEPATH += graphcut

include( ../../drishti.pri )

# Input
FORMS += drishtipaint.ui viewermenu.ui graphcutmenu.ui curvesmenu.ui fibersmenu.ui propertyeditor.ui

#----------------------------------------------------------------
# Windows setup for 64-bit system
#contains(Windows_Setup, Win64) {
  win32 {
	 DEFINES += USE_GLMEDIA
         INCLUDEPATH += c:\Qt\libQGLViewer-2.6.1 ..\..\glmedia-64
         LIBS += QGLViewer2.lib glew32.lib glmedia.lib
         QMAKE_LIBDIR += c:\Qt\libQGLViewer-2.6.1\lib ..\..\glmedia-64
        }
#}

unix {
    DEFINES += NO_GLMEDIA
}

#----------------------------------------------------------------
# MacOSX setup
macx {
    LIBS += -lGLEW -framework QGLViewer -framework GLUT
}
#----------------------------------------------------------------

HEADERS += commonqtclasses.h \
	boundingbox.h \
	drishtipaint.h \
	curvegroup.h \
        clipinformation.h \
        clipplane.h \
	clipobject.h \
	clipgrabber.h \
	dcolordialog.h \
	dcolorwheel.h \
	fiber.h \
	fibergroup.h\
	imagewidget.h \
	global.h \
	gradienteditor.h \
	gradienteditorwidget.h \
        livewire.h \
	mybitarray.h \
	myslider.h \
	mymanipulatedframe.h \
 	morphcurve.h \
 	morphslice.h \
	propertyeditor.h \
	splineeditor.h \
	splineeditorwidget.h \
	splineinformation.h \
	splinetransferfunction.h \
	staticfunctions.h \
	transferfunctioncontainer.h \
	transferfunctioneditorwidget.h \
	transferfunctionmanager.h \
	tagcoloreditor.h \
	coloreditor.h \
	opacityeditor.h \
	viewer.h \
	volume.h \
	volumefilemanager.h \
	volumeinformation.h \
	volumemask.h \
	volumeoperations.h \
	graphcut/graph.h \
	graphcut/graphcut.h \
	graphcut/block.h \
	graphcut/point.h \
	ply.h \
	lookuptable.h \
	marchingcubes.h \
	showhelp.h \
	getmemorysize.h \
	popupslider.h \
	shaderfactory.h


SOURCES += drishtipaint.cpp \
	main.cpp \
	boundingbox.cpp \
	curvegroup.cpp \
        clipinformation.cpp \
        clipplane.cpp \
	clipobject.cpp \
	clipgrabber.cpp \
	dcolordialog.cpp \
	dcolorwheel.cpp \
	fiber.cpp \
	fibergroup.cpp\
	imagewidget.cpp \
	global.cpp \
	gradienteditor.cpp \
	gradienteditorwidget.cpp \
        livewire.cpp \
	mybitarray.cpp \
	myslider.cpp \
	mymanipulatedframe.cpp \
 	morphcurve.cpp \
 	morphslice.cpp \
	propertyeditor.cpp \
	splineeditor.cpp \
	splineeditorwidget.cpp \
	splineinformation.cpp \
	splinetransferfunction.cpp \
	staticfunctions.cpp \
	transferfunctioncontainer.cpp \
	transferfunctioneditorwidget.cpp \
	transferfunctionmanager.cpp \
	tagcoloreditor.cpp \
	coloreditor.cpp \
	opacityeditor.cpp \
	viewer.cpp \
	volume.cpp \
	volumefilemanager.cpp \
	volumeinformation.cpp \
	volumemask.cpp \
	volumeoperations.cpp \
	graphcut/graph.cpp \
	graphcut/graphcut.cpp \
	ply.c \
	marchingcubes.cpp \
	showhelp.cpp \
	getmemorysize.cpp \
	popupslider.cpp \
	shaderfactory.cpp