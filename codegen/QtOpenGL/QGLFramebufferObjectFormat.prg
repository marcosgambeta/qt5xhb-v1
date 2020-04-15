%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtOpenGL

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGLFramebufferObjectFormat ()
$internalConstructor=|new1|

$prototype=QGLFramebufferObjectFormat ( const QGLFramebufferObjectFormat & other )
$internalConstructor=|new2|const QGLFramebufferObjectFormat &

/*
[1]QGLFramebufferObjectFormat ()
[2]QGLFramebufferObjectFormat ( const QGLFramebufferObjectFormat & other )
*/

HB_FUNC_STATIC( QGLFRAMEBUFFEROBJECTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGLFramebufferObjectFormat_new1();
  }
  else if( ISNUMPAR(1) && ISQGLFRAMEBUFFEROBJECTFORMAT(1) )
  {
    QGLFramebufferObjectFormat_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QGLFramebufferObject::Attachment attachment () const
$method=|QGLFramebufferObject::Attachment|attachment|

$prototype=GLenum internalTextureFormat () const
$method=|GLenum|internalTextureFormat|

$prototype=int samples () const
$method=|int|samples|

$prototype=void setAttachment ( QGLFramebufferObject::Attachment attachment )
$method=|void|setAttachment|QGLFramebufferObject::Attachment

$prototype=void setInternalTextureFormat ( GLenum internalTextureFormat )
$method=|void|setInternalTextureFormat|GLenum

$prototype=void setSamples ( int samples )
$method=|void|setSamples|int

$prototype=void setTextureTarget ( GLenum target )
$method=|void|setTextureTarget|GLenum

$prototype=GLenum textureTarget () const
$method=|GLenum|textureTarget|

#pragma ENDDUMP
