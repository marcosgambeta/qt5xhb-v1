/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QOpenGLPixelTransferOptions

   DATA pointer
   DATA class_id INIT Class_Id_QOpenGLPixelTransferOptions
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD swap
   METHOD setAlignment
   METHOD alignment
   METHOD setSkipImages
   METHOD skipImages
   METHOD setSkipRows
   METHOD skipRows
   METHOD setSkipPixels
   METHOD skipPixels
   METHOD setImageHeight
   METHOD imageHeight
   METHOD setRowLength
   METHOD rowLength
   METHOD setLeastSignificantByteFirst
   METHOD isLeastSignificantBitFirst
   METHOD setSwapBytesEnabled
   METHOD isSwapBytesEnabled
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLPixelTransferOptions
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOpenGLPixelTransferOptions>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOpenGLPixelTransferOptions>
#endif

/*
QOpenGLPixelTransferOptions()
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEW1 )
{
  QOpenGLPixelTransferOptions * o = new QOpenGLPixelTransferOptions (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLPixelTransferOptions *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QOpenGLPixelTransferOptions(const QOpenGLPixelTransferOptions &)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEW2 )
{
  QOpenGLPixelTransferOptions * par1 = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtr(1);
  QOpenGLPixelTransferOptions * o = new QOpenGLPixelTransferOptions ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QOpenGLPixelTransferOptions *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QOpenGLPixelTransferOptions()
//[2]QOpenGLPixelTransferOptions(const QOpenGLPixelTransferOptions &)

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QOPENGLPIXELTRANSFEROPTIONS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOPENGLPIXELTRANSFEROPTIONS(1) )
  {
    HB_FUNC_EXEC( QOPENGLPIXELTRANSFEROPTIONS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_DELETE )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QOpenGLPixelTransferOptions &other)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SWAP )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLPixelTransferOptions * par1 = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlignment(int alignment)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETALIGNMENT )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlignment ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int alignment() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_ALIGNMENT )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->alignment (  ) );
  }
}


/*
void setSkipImages(int skipImages)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSKIPIMAGES )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSkipImages ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int skipImages() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SKIPIMAGES )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->skipImages (  ) );
  }
}


/*
void setSkipRows(int skipRows)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSKIPROWS )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSkipRows ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int skipRows() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SKIPROWS )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->skipRows (  ) );
  }
}


/*
void setSkipPixels(int skipPixels)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSKIPPIXELS )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSkipPixels ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int skipPixels() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SKIPPIXELS )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->skipPixels (  ) );
  }
}


/*
void setImageHeight(int imageHeight)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETIMAGEHEIGHT )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setImageHeight ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int imageHeight() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_IMAGEHEIGHT )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->imageHeight (  ) );
  }
}


/*
void setRowLength(int rowLength)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETROWLENGTH )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowLength ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int rowLength() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_ROWLENGTH )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowLength (  ) );
  }
}


/*
void setLeastSignificantByteFirst(bool lsbFirst)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETLEASTSIGNIFICANTBYTEFIRST )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLeastSignificantByteFirst ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isLeastSignificantBitFirst() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_ISLEASTSIGNIFICANTBITFIRST )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isLeastSignificantBitFirst (  ) );
  }
}


/*
void setSwapBytesEnabled(bool swapBytes)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSWAPBYTESENABLED )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSwapBytesEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isSwapBytesEnabled() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_ISSWAPBYTESENABLED )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSwapBytesEnabled (  ) );
  }
}



HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEWFROM )
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

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QOPENGLPIXELTRANSFEROPTIONS_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QOPENGLPIXELTRANSFEROPTIONS_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSELFDESTRUCTION )
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