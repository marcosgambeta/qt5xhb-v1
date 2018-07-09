%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLBuffer()
$internalConstructor=|new1|

$prototype=QOpenGLBuffer(QOpenGLBuffer::Type type)
$internalConstructor=|new2|QOpenGLBuffer::Type

$prototype=QOpenGLBuffer(const QOpenGLBuffer & other)
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

$prototype=void allocate(const void * data, int count)
$internalMethod=|void|allocate,allocate1|const void *,int

$prototype=void allocate(int count)
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

$prototype=bool bind()
$method=|bool|bind|

$prototype=GLuint bufferId() const
$method=|GLuint|bufferId|

$prototype=bool create()
$method=|bool|create|

$prototype=void destroy()
$method=|void|destroy|

$prototype=bool isCreated() const
$method=|bool|isCreated|

$prototype=void * map(QOpenGLBuffer::Access access)
$method=|void *|map|QOpenGLBuffer::Access

$prototype=bool read(int offset, void * data, int count)
$method=|bool|read|int,void *,int

$prototype=void release()
$internalMethod=|void|release,release1|

$prototype=static void release(QOpenGLBuffer::Type type)
$internalStaticMethod=|void|release,release2|QOpenGLBuffer::Type

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

$prototype=void setUsagePattern(QOpenGLBuffer::UsagePattern value)
$method=|void|setUsagePattern|QOpenGLBuffer::UsagePattern

$prototype=int size() const
$method=|int|size|

$prototype=QOpenGLBuffer::Type type() const
$method=|QOpenGLBuffer::Type|type|

$prototype=bool unmap()
$method=|bool|unmap|

$prototype=QOpenGLBuffer::UsagePattern usagePattern() const
$method=|QOpenGLBuffer::UsagePattern|usagePattern|

$prototype=void write(int offset, const void * data, int count)
$method=|void|write|int,const void *,int

#pragma ENDDUMP
