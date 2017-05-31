/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QOpenGLFramebufferObjectFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOpenGLFramebufferObjectFormat>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOpenGLFramebufferObjectFormat>
#endif

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
  QOpenGLFramebufferObjectFormat * par1 = (QOpenGLFramebufferObjectFormat *) _qt5xhb_itemGetPtr(1);
  QOpenGLFramebufferObjectFormat * o = new QOpenGLFramebufferObjectFormat ( *par1 );
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

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_DELETE )
{
  QOpenGLFramebufferObjectFormat * obj = (QOpenGLFramebufferObjectFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

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
    hb_retni( obj->samples () );
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
    hb_retl( obj->mipmap () );
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
    int par1 = hb_parni(1);
    obj->setAttachment ( (QOpenGLFramebufferObject::Attachment) par1 );
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
    obj->setTextureTarget ( (GLenum) hb_parni(1) );
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
    hb_retni( obj->textureTarget () );
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
    obj->setInternalTextureFormat ( (GLenum) hb_parni(1) );
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
    hb_retni( obj->internalTextureFormat () );
  }
}



HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECTFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QOPENGLFRAMEBUFFEROBJECTFORMAT_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QOPENGLFRAMEBUFFEROBJECTFORMAT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
