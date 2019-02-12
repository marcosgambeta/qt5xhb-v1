%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

#include <QtCore/QVector>

$prototype=explicit QOpenGLTimeMonitor(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$deleteMethod=5,1,0|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=int sampleCount() const
$method=5,1,0|int|sampleCount||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void setSampleCount(int sampleCount)
%method=5,1,0|void|setSampleCount|int|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=bool create()
$method=5,1,0|bool|create||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void destroy()
$method=5,1,0|void|destroy||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=bool isCreated() const
$method=5,1,0|bool|isCreated||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=QVector<GLuint> objectIds() const
$method=5,1,0|QVector<GLuint>|objectIds||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=int recordSample()
$method=5,1,0|int|recordSample||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=bool isResultAvailable() const
$method=5,1,0|bool|isResultAvailable||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=QVector<GLuint64> waitForSamples() const
$method=5,1,0|QVector<GLuint64>|waitForSamples||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=QVector<GLuint64> waitForIntervals() const
$method=5,1,0|QVector<GLuint64>|waitForIntervals||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void reset()
$method=5,1,0|void|reset||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

#pragma ENDDUMP
