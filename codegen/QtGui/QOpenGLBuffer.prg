$header

#include "hbclass.ch"

CLASS QOpenGLBuffer INHERIT QObject

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QOpenGLBuffer()
*/
$internalConstructor=|new1|

/*
QOpenGLBuffer(QOpenGLBuffer::Type type)
*/
$internalConstructor=|new2|QOpenGLBuffer::Type

/*
QOpenGLBuffer(const QOpenGLBuffer & other)
*/
$internalConstructor=|new3|const QOpenGLBuffer &

//[1]QOpenGLBuffer()
//[2]QOpenGLBuffer(QOpenGLBuffer::Type type)
//[3]QOpenGLBuffer(const QOpenGLBuffer & other)

HB_FUNC_STATIC( QOPENGLBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLBuffer_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QOpenGLBuffer_new2();
  }
  else if( ISNUMPAR(1) && ISQOPENGLBUFFER(1) )
  {
    QOpenGLBuffer_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void allocate(const void * data, int count)
*/
$internalMethod=|void|allocate,allocate1|const void *,int

/*
void allocate(int count)
*/
$internalMethod=|void|allocate,allocate2|int

//[1]void allocate(const void * data, int count)
//[2]void allocate(int count)

HB_FUNC_STATIC( QOPENGLBUFFER_ALLOCATE )
{
  if( ISNUMPAR(2) && ISPOINTER(1) && ISNUM(2) )
  {
    QOpenGLBuffer_allocate1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QOpenGLBuffer_allocate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool bind()
*/
$method=|bool|bind|

/*
GLuint bufferId() const
*/
$method=|GLuint|bufferId|

/*
bool create()
*/
$method=|bool|create|

/*
void destroy()
*/
$method=|void|destroy|

/*
bool isCreated() const
*/
$method=|bool|isCreated|

/*
void * map(QOpenGLBuffer::Access access)
*/
$method=|void *|map|QOpenGLBuffer::Access

/*
bool read(int offset, void * data, int count)
*/
$method=|bool|read|int,void *,int

/*
void release()
*/
$internalMethod=|void|release,release1|

/*
static void release(QOpenGLBuffer::Type type)
*/
$staticInternalMethod=|void|release,release2|QOpenGLBuffer::Type

//[1]void release()
//[2]void release(QOpenGLBuffer::Type type)

HB_FUNC_STATIC( QOPENGLBUFFER_RELEASE )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLBuffer_release1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QOpenGLBuffer_release2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setUsagePattern(QOpenGLBuffer::UsagePattern value)
*/
$method=|void|setUsagePattern|QOpenGLBuffer::UsagePattern

/*
int size() const
*/
$method=|int|size|

/*
QOpenGLBuffer::Type type() const
*/
$method=|QOpenGLBuffer::Type|type|

/*
bool unmap()
*/
$method=|bool|unmap|

/*
QOpenGLBuffer::UsagePattern usagePattern() const
*/
$method=|QOpenGLBuffer::UsagePattern|usagePattern|

/*
void write(int offset, const void * data, int count)
*/
$method=|void|write|int,const void *,int

#pragma ENDDUMP
