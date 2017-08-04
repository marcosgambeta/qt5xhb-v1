$header

#include "hbclass.ch"

CLASS QOpenGLFramebufferObjectFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setSamples
   METHOD samples
   METHOD setMipmap
   METHOD mipmap
   METHOD setAttachment
   METHOD attachment
   METHOD setTextureTarget
   METHOD textureTarget
   METHOD setInternalTextureFormat
   METHOD internalTextureFormat

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

/*
QOpenGLFramebufferObjectFormat()
*/
$internalConstructor=|new1|

/*
QOpenGLFramebufferObjectFormat(const QOpenGLFramebufferObjectFormat &other)
*/
$internalConstructor=|new2|const QOpenGLFramebufferObjectFormat &

//[1]QOpenGLFramebufferObjectFormat()
//[2]QOpenGLFramebufferObjectFormat(const QOpenGLFramebufferObjectFormat &other)

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLFramebufferObjectFormat_new1();
  }
  else if( ISNUMPAR(1) && ISQOPENGLFRAMEBUFFEROBJECTFORMAT(1) )
  {
    QOpenGLFramebufferObjectFormat_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setSamples(int samples)
*/
$method=|void|setSamples|int

/*
int samples() const
*/
$method=|int|samples|

/*
void setMipmap(bool enabled)
*/
$method=|void|setMipmap|bool

/*
bool mipmap() const
*/
$method=|bool|mipmap|

/*
void setAttachment(QOpenGLFramebufferObject::Attachment attachment)
*/
$method=|void|setAttachment|QOpenGLFramebufferObject::Attachment

/*
QOpenGLFramebufferObject::Attachment attachment() const
*/
$method=|QOpenGLFramebufferObject::Attachment|attachment|

/*
void setTextureTarget(GLenum target)
*/
$method=|void|setTextureTarget|GLenum

/*
GLenum textureTarget() const
*/
$method=|GLenum|textureTarget|

/*
void setInternalTextureFormat(GLenum internalTextureFormat)
*/
$method=|void|setInternalTextureFormat|GLenum

/*
GLenum internalTextureFormat() const
*/
$method=|GLenum|internalTextureFormat|

$extraMethods

#pragma ENDDUMP
