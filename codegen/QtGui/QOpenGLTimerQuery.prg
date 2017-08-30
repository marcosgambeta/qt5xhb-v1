$header

#include "hbclass.ch"

CLASS QOpenGLTimerQuery INHERIT QObject

   DATA self_destruction INIT .F.

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
explicit QOpenGLTimerQuery(QObject *parent = 0)
*/
$constructor=5,1,0|new|QObject *=0|#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

HB_FUNC_STATIC( QOPENGLTIMERQUERY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)
  QOpenGLTimerQuery * obj = (QOpenGLTimerQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
GLuint objectId() const
*/
$method=5,1,0|GLuint|objectId||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
void begin()
*/
$method=5,1,0|void|begin||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
void end()
*/
$method=5,1,0|void|end||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
GLuint64 waitForTimestamp() const
*/
$method=5,1,0|GLuint64|waitForTimestamp||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
void recordTimestamp()
*/
$method=5,1,0|void|recordTimestamp||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
bool isResultAvailable() const
*/
$method=5,1,0|bool|isResultAvailable||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

/*
GLuint64 waitForResult() const
*/
$method=5,1,0|GLuint64|waitForResult||#if !defined(QT_NO_OPENGL) && !defined(QT_OPENGL_ES_2)

#pragma ENDDUMP
