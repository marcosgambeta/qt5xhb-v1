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
HB_FUNC_STATIC( QOPENGLTIMEMONITOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * o = new QOpenGLTimeMonitor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
#endif
}

HB_FUNC_STATIC( QOPENGLTIMEMONITOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimeMonitor * obj = (QOpenGLTimeMonitor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}

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
