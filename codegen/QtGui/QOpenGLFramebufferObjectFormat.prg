$header

#include "hbclass.ch"

CLASS QOpenGLFramebufferObjectFormat

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_NEW1 )
{
  QOpenGLFramebufferObjectFormat * o = new QOpenGLFramebufferObjectFormat ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QOpenGLFramebufferObjectFormat(const QOpenGLFramebufferObjectFormat &other)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_NEW2 )
{
  QOpenGLFramebufferObjectFormat * o = new QOpenGLFramebufferObjectFormat ( *PQOPENGLFRAMEBUFFEROBJECTFORMAT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QOpenGLFramebufferObjectFormat()
//[2]QOpenGLFramebufferObjectFormat(const QOpenGLFramebufferObjectFormat &other)

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECTFORMAT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOPENGLFRAMEBUFFEROBJECTFORMAT(1)  )
  {
    HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECTFORMAT_NEW2 );
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
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_SETSAMPLES )
{
  QOpenGLFramebufferObjectFormat * obj = (QOpenGLFramebufferObjectFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSamples ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int samples() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_SAMPLES )
{
  QOpenGLFramebufferObjectFormat * obj = (QOpenGLFramebufferObjectFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->samples () );
  }
}


/*
void setMipmap(bool enabled)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_SETMIPMAP )
{
  QOpenGLFramebufferObjectFormat * obj = (QOpenGLFramebufferObjectFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMipmap ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool mipmap() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_MIPMAP )
{
  QOpenGLFramebufferObjectFormat * obj = (QOpenGLFramebufferObjectFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->mipmap () );
  }
}


/*
void setAttachment(QOpenGLFramebufferObject::Attachment attachment)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_SETATTACHMENT )
{
  QOpenGLFramebufferObjectFormat * obj = (QOpenGLFramebufferObjectFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAttachment ( (QOpenGLFramebufferObject::Attachment) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QOpenGLFramebufferObject::Attachment attachment() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_ATTACHMENT )
{
  QOpenGLFramebufferObjectFormat * obj = (QOpenGLFramebufferObjectFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->attachment () );
  }
}


/*
void setTextureTarget(GLenum target)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_SETTEXTURETARGET )
{
  QOpenGLFramebufferObjectFormat * obj = (QOpenGLFramebufferObjectFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTextureTarget ( PGLENUM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
GLenum textureTarget() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_TEXTURETARGET )
{
  QOpenGLFramebufferObjectFormat * obj = (QOpenGLFramebufferObjectFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLENUM( obj->textureTarget () );
  }
}


/*
void setInternalTextureFormat(GLenum internalTextureFormat)
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_SETINTERNALTEXTUREFORMAT )
{
  QOpenGLFramebufferObjectFormat * obj = (QOpenGLFramebufferObjectFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setInternalTextureFormat ( PGLENUM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
GLenum internalTextureFormat() const
*/
HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_INTERNALTEXTUREFORMAT )
{
  QOpenGLFramebufferObjectFormat * obj = (QOpenGLFramebufferObjectFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RGLENUM( obj->internalTextureFormat () );
  }
}

$extraMethods

#pragma ENDDUMP
