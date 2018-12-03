%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QOpenGLContext>

$prototype=explicit QOpenGLWidget(QWidget* parent = 0, Qt::WindowFlags f = 0)
$constructor=5,4,0|new|QWidget *=0,Qt::WindowFlags=0|#ifndef QT_NO_OPENGL

$deleteMethod=5,4,0|#ifndef QT_NO_OPENGL

$prototype=QSurfaceFormat format() const
$method=5,4,0|QSurfaceFormat|format||#ifndef QT_NO_OPENGL

$prototype=void setFormat(const QSurfaceFormat &format)
$method=5,4,0|void|setFormat|const QSurfaceFormat &|#ifndef QT_NO_OPENGL

$prototype=bool isValid() const
$method=5,4,0|bool|isValid||#ifndef QT_NO_OPENGL

$prototype=void makeCurrent()
$method=5,4,0|void|makeCurrent||#ifndef QT_NO_OPENGL

$prototype=void doneCurrent()
$method=5,4,0|void|doneCurrent||#ifndef QT_NO_OPENGL

$prototype=QOpenGLContext *context() const
$method=5,4,0|QOpenGLContext *|context||#ifndef QT_NO_OPENGL

$prototype=GLuint defaultFramebufferObject() const
$method=5,4,0|GLuint|defaultFramebufferObject||#ifndef QT_NO_OPENGL

$prototype=QImage grabFramebuffer()
$method=5,4,0|QImage|grabFramebuffer||#ifndef QT_NO_OPENGL

$beginSignals
$signal=5,4,0|aboutToCompose()
$signal=5,4,0|frameSwapped()
$signal=5,4,0|aboutToResize()
$signal=5,4,0|resized()
$endSignals

#pragma ENDDUMP
