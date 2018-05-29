%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD objectId
   METHOD begin
   METHOD end
   METHOD waitForTimestamp
   METHOD recordTimestamp
   METHOD isResultAvailable
   METHOD waitForResult

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=explicit QOpenGLTimerQuery(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$deleteMethod=5,1,0|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=bool create()
$method=5,1,0|bool|create||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void destroy()
$method=5,1,0|void|destroy||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=bool isCreated() const
$method=5,1,0|bool|isCreated||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=GLuint objectId() const
$method=5,1,0|GLuint|objectId||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void begin()
$method=5,1,0|void|begin||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void end()
$method=5,1,0|void|end||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=GLuint64 waitForTimestamp() const
$method=5,1,0|GLuint64|waitForTimestamp||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=void recordTimestamp()
$method=5,1,0|void|recordTimestamp||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=bool isResultAvailable() const
$method=5,1,0|bool|isResultAvailable||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$prototype=GLuint64 waitForResult() const
$method=5,1,0|GLuint64|waitForResult||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

#pragma ENDDUMP
