$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACEFORMAT
REQUEST QOPENGLFUNCTIONS
REQUEST QFUNCTIONPOINTER
REQUEST QSCREEN
REQUEST QOPENGLCONTEXTGROUP
REQUEST QSURFACE
#endif

CLASS QOpenGLContext INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD create
   METHOD defaultFramebufferObject
   METHOD doneCurrent
   METHOD format
   METHOD functions
   METHOD getProcAddress
   METHOD hasExtension
   METHOD isValid
   METHOD makeCurrent
   METHOD screen
   METHOD setFormat
   METHOD setScreen
   METHOD setShareContext
   METHOD shareContext
   METHOD shareGroup
   METHOD surface
   METHOD swapBuffers
   METHOD areSharing
   METHOD currentContext

   METHOD onAboutToBeDestroyed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QOpenGLContext(QObject * parent = 0)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_NEW )
{
  QOpenGLContext * o = new QOpenGLContext ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool create()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_CREATE )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->create () );
  }
}

/*
GLuint defaultFramebufferObject() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_DEFAULTFRAMEBUFFEROBJECT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RGLUINT( obj->defaultFramebufferObject () );
  }
}

/*
void doneCurrent()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_DONECURRENT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->doneCurrent ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSurfaceFormat format() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_FORMAT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSurfaceFormat * ptr = new QSurfaceFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QSURFACEFORMAT" );
  }
}

/*
QOpenGLFunctions * functions() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_FUNCTIONS )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QOpenGLFunctions * ptr = obj->functions ();
    _qt5xhb_createReturnClass ( ptr, "QOPENGLFUNCTIONS" );
  }
}

/*
QFunctionPointer getProcAddress(const QByteArray & procName) const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_GETPROCADDRESS )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFunctionPointer * ptr = new QFunctionPointer( obj->getProcAddress ( *PQBYTEARRAY(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QFUNCTIONPOINTER" );
  }
}

/*
bool hasExtension(const QByteArray & extension) const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_HASEXTENSION )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasExtension ( *PQBYTEARRAY(1) ) );
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_ISVALID )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
bool makeCurrent(QSurface * surface)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_MAKECURRENT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->makeCurrent ( PQSURFACE(1) ) );
  }
}

/*
QScreen * screen() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SCREEN )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QScreen * ptr = obj->screen ();
    _qt5xhb_createReturnClass ( ptr, "QSCREEN" );
  }
}

/*
void setFormat(const QSurfaceFormat & format)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SETFORMAT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFormat ( *PQSURFACEFORMAT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setScreen(QScreen * screen)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SETSCREEN )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setScreen ( PQSCREEN(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShareContext(QOpenGLContext * shareContext)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SETSHARECONTEXT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setShareContext ( PQOPENGLCONTEXT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QOpenGLContext * shareContext() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SHARECONTEXT )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QOpenGLContext * ptr = obj->shareContext ();
    _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXT" );
  }
}

/*
QOpenGLContextGroup * shareGroup() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SHAREGROUP )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QOpenGLContextGroup * ptr = obj->shareGroup ();
    _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXTGROUP" );
  }
}

/*
QSurface * surface() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SURFACE )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSurface * ptr = obj->surface ();
    _qt5xhb_createReturnClass ( ptr, "QSURFACE" );
  }
}

/*
void swapBuffers(QSurface * surface)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_SWAPBUFFERS )
{
  QOpenGLContext * obj = (QOpenGLContext *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->swapBuffers ( PQSURFACE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static bool areSharing(QOpenGLContext * first, QOpenGLContext * second)
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_ARESHARING )
{
  RBOOL( QOpenGLContext::areSharing ( PQOPENGLCONTEXT(1), PQOPENGLCONTEXT(2) ) );
}

/*
static QOpenGLContext * currentContext()
*/
HB_FUNC_STATIC( QOPENGLCONTEXT_CURRENTCONTEXT )
{
  QOpenGLContext * ptr = QOpenGLContext::currentContext ();
  _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXT" );
}

#pragma ENDDUMP
