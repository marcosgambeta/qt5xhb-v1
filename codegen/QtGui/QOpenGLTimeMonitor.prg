$header

#include "hbclass.ch"

CLASS QOpenGLTimeMonitor INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD sampleCount
   METHOD setSampleCount
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD objectIds
   METHOD recordSample
   METHOD isResultAvailable
   METHOD waitForSamples
   METHOD waitForIntervals
   METHOD reset

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

#include <QVector>

/*
explicit QOpenGLTimeMonitor(QObject *parent = 0)
*/
$constructor=5,1,0|new|QObject *=0|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

$deleteMethod=5,1,0|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
int sampleCount() const
*/
$method=5,1,0|int|sampleCount||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
void setSampleCount(int sampleCount)
*/
%method=5,1,0|void|setSampleCount|int|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
bool create()
*/
$method=5,1,0|bool|create||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
void destroy()
*/
$method=5,1,0|void|destroy||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
bool isCreated() const
*/
$method=5,1,0|bool|isCreated||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
QVector<GLuint> objectIds() const
*/
$method=5,1,0|QVector<GLuint>|objectIds||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
int recordSample()
*/
$method=5,1,0|int|recordSample||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
bool isResultAvailable() const
*/
$method=5,1,0|bool|isResultAvailable||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
QVector<GLuint64> waitForSamples() const
*/
$method=5,1,0|QVector<GLuint64>|waitForSamples||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
QVector<GLuint64> waitForIntervals() const
*/
$method=5,1,0|QVector<GLuint64>|waitForIntervals||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
void reset()
*/
$method=5,1,0|void|reset||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

#pragma ENDDUMP
