$header

#include "hbclass.ch"

CLASS QGLBuffer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD allocate
   METHOD bind
   METHOD bufferId
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD map
   METHOD read
   METHOD release
   METHOD setUsagePattern
   METHOD size
   METHOD type
   METHOD unmap
   METHOD usagePattern
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLBuffer ()
$internalConstructor=|new1|

$prototype=QGLBuffer ( QGLBuffer::Type type )
$internalConstructor=|new2|QGLBuffer::Type

$prototype=QGLBuffer ( const QGLBuffer & other )
$internalConstructor=|new3|const QGLBuffer &

//[1]QGLBuffer ()
//[2]QGLBuffer ( QGLBuffer::Type type )
//[3]QGLBuffer ( const QGLBuffer & other )

HB_FUNC_STATIC( QGLBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLBuffer_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGLBuffer_new2();
  }
  else if( ISNUMPAR(1) && ISQGLBUFFER(1) )
  {
    QGLBuffer_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void allocate ( const void * data, int count )
$internalMethod=|void|allocate,allocate1|const void *,int

$prototype=void allocate ( int count )
$internalMethod=|void|allocate,allocate2|int

//[1]void allocate ( const void * data, int count )
//[2]void allocate ( int count )

HB_FUNC_STATIC( QGLBUFFER_ALLOCATE )
{
  if( ISNUMPAR(2) && ISPOINTER(1) && ISNUM(2) )
  {
    QGLBuffer_allocate1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGLBuffer_allocate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool bind ()
$method=|bool|bind|

$prototype=GLuint bufferId () const
$method=|GLuint|bufferId|

$prototype=bool create ()
$method=|bool|create|

$prototype=void destroy ()
$method=|void|destroy|

$prototype=bool isCreated () const
$method=|bool|isCreated|

$prototype=void * map ( QGLBuffer::Access access )
$method=|void *|map|QGLBuffer::Access

$prototype=bool read ( int offset, void * data, int count )
$method=|bool|read|int,void *,int

$prototype=void release ()
$internalMethod=|void|release,release1|

$prototype=static void release ( QGLBuffer::Type type )
$internalStaticMethod=|void|release,release2|QGLBuffer::Type

//[1]void release ()
//[2]void release ( QGLBuffer::Type type )

HB_FUNC_STATIC( QGLBUFFER_RELEASE )
{
  if( ISNUMPAR(0) )
  {
    QGLBuffer_release1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGLBuffer_release2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setUsagePattern ( QGLBuffer::UsagePattern value )
$method=|void|setUsagePattern|QGLBuffer::UsagePattern

$prototype=int size () const
$method=|int|size|

$prototype=QGLBuffer::Type type () const
$method=|QGLBuffer::Type|type|

$prototype=bool unmap ()
$method=|bool|unmap|

$prototype=QGLBuffer::UsagePattern usagePattern () const
$method=|QGLBuffer::UsagePattern|usagePattern|

$prototype=void write ( int offset, const void * data, int count )
$method=|void|write|int,const void *,int

$extraMethods

#pragma ENDDUMP
