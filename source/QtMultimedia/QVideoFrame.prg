/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST UCHAR
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QVideoFrame

   DATA pointer
   DATA class_id INIT Class_Id_QVideoFrame
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD bits1
   METHOD bits2
   METHOD bits
   METHOD bytesPerLine
   METHOD endTime
   METHOD fieldType
   METHOD handle
   METHOD handleType
   METHOD height
   METHOD isMapped
   METHOD isReadable
   METHOD isValid
   METHOD isWritable
   METHOD map
   METHOD mapMode
   METHOD mappedBytes
   METHOD pixelFormat
   METHOD setEndTime
   METHOD setFieldType
   METHOD setStartTime
   METHOD size
   METHOD startTime
   METHOD unmap
   METHOD width
   METHOD imageFormatFromPixelFormat
   METHOD pixelFormatFromImageFormat
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoFrame>
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
#include <QVideoFrame>
#endif

#include <QVariant>

/*
QVideoFrame ()
*/
HB_FUNC_STATIC( QVIDEOFRAME_NEW1 )
{
  QVideoFrame * o = new QVideoFrame (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVideoFrame *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
*/
HB_FUNC_STATIC( QVIDEOFRAME_NEW2 )
{
  QAbstractVideoBuffer * par1 = (QAbstractVideoBuffer *) _qt5xhb_itemGetPtr(1);
  QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
  int par3 = hb_parni(3);
  QVideoFrame * o = new QVideoFrame ( par1, *par2,  (QVideoFrame::PixelFormat) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVideoFrame *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
*/
HB_FUNC_STATIC( QVIDEOFRAME_NEW3 )
{
  int par1 = hb_parni(1);
  QSize * par2 = (QSize *) _qt5xhb_itemGetPtr(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  QVideoFrame * o = new QVideoFrame ( par1, *par2, par3,  (QVideoFrame::PixelFormat) par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVideoFrame *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QVideoFrame ( const QImage & image )
*/
HB_FUNC_STATIC( QVIDEOFRAME_NEW4 )
{
  QImage * par1 = (QImage *) _qt5xhb_itemGetPtr(1);
  QVideoFrame * o = new QVideoFrame ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVideoFrame *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QVideoFrame ( const QVideoFrame & other )
*/
HB_FUNC_STATIC( QVIDEOFRAME_NEW5 )
{
  QVideoFrame * par1 = (QVideoFrame *) _qt5xhb_itemGetPtr(1);
  QVideoFrame * o = new QVideoFrame ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVideoFrame *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QVideoFrame ()
//[2]QVideoFrame ( QAbstractVideoBuffer * buffer, const QSize & size, PixelFormat format )
//[3]QVideoFrame ( int bytes, const QSize & size, int bytesPerLine, PixelFormat format )
//[4]QVideoFrame ( const QImage & image )
//[5]QVideoFrame ( const QVideoFrame & other )

HB_FUNC_STATIC( QVIDEOFRAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW1 );
  }
  else if( ISNUMPAR(3) && ISQABSTRACTVIDEOBUFFER(1) && ISQSIZE(2) && ISNUM(3)  )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQSIZE(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQVIDEOFRAME(1) )
  {
    HB_FUNC_EXEC( QVIDEOFRAME_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVIDEOFRAME_DELETE )
{
  QVideoFrame * obj = (QVideoFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
uchar * bits ()
*/
HB_FUNC_STATIC( QVIDEOFRAME_BITS1 )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    uchar * ptr = obj->bits (  );
    _qt5xhb_createReturnClass ( ptr, "UCHAR" );
  }
}


/*
const uchar * bits () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_BITS2 )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const uchar * ptr = obj->bits (  );
    _qt5xhb_createReturnClass ( ptr, "UCHAR" );
  }
}


//[1]uchar * bits ()
//[2]const uchar * bits () const

HB_FUNC_STATIC( QVIDEOFRAME_BITS )
{
  HB_FUNC_EXEC( QVIDEOFRAME_BITS1 );
}

/*
int bytesPerLine () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_BYTESPERLINE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesPerLine (  ) );
  }
}


/*
qint64 endTime () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ENDTIME )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->endTime (  ) );
  }
}


/*
FieldType fieldType () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_FIELDTYPE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fieldType (  ) );
  }
}


/*
QVariant handle () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_HANDLE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->handle (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QAbstractVideoBuffer::HandleType handleType () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_HANDLETYPE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->handleType (  ) );
  }
}


/*
int height () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_HEIGHT )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->height (  ) );
  }
}


/*
bool isMapped () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISMAPPED )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isMapped (  ) );
  }
}


/*
bool isReadable () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISREADABLE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReadable (  ) );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISVALID )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool isWritable () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_ISWRITABLE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isWritable (  ) );
  }
}


/*
bool map ( QAbstractVideoBuffer::MapMode mode )
*/
HB_FUNC_STATIC( QVIDEOFRAME_MAP )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->map (  (QAbstractVideoBuffer::MapMode) par1 ) );
  }
}


/*
QAbstractVideoBuffer::MapMode mapMode () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_MAPMODE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->mapMode (  ) );
  }
}


/*
int mappedBytes () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_MAPPEDBYTES )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->mappedBytes (  ) );
  }
}


/*
PixelFormat pixelFormat () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_PIXELFORMAT )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pixelFormat (  ) );
  }
}


/*
void setEndTime ( qint64 time )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETENDTIME )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEndTime ( (qint64) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFieldType ( FieldType field )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETFIELDTYPE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFieldType (  (QVideoFrame::FieldType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStartTime ( qint64 time )
*/
HB_FUNC_STATIC( QVIDEOFRAME_SETSTARTTIME )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStartTime ( (qint64) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize size () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_SIZE )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
qint64 startTime () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_STARTTIME )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->startTime (  ) );
  }
}


/*
void unmap ()
*/
HB_FUNC_STATIC( QVIDEOFRAME_UNMAP )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unmap (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int width () const
*/
HB_FUNC_STATIC( QVIDEOFRAME_WIDTH )
{
  QVideoFrame * obj = (QVideoFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->width (  ) );
  }
}


/*
static QImage::Format imageFormatFromPixelFormat ( PixelFormat format )
*/
HB_FUNC_STATIC( QVIDEOFRAME_IMAGEFORMATFROMPIXELFORMAT )
{
  int par1 = hb_parni(1);
  hb_retni( QVideoFrame::imageFormatFromPixelFormat (  (QVideoFrame::PixelFormat) par1 ) );
}


/*
static PixelFormat pixelFormatFromImageFormat ( QImage::Format format )
*/
HB_FUNC_STATIC( QVIDEOFRAME_PIXELFORMATFROMIMAGEFORMAT )
{
  int par1 = hb_parni(1);
  hb_retni( QVideoFrame::pixelFormatFromImageFormat (  (QImage::Format) par1 ) );
}



HB_FUNC_STATIC( QVIDEOFRAME_NEWFROM )
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

HB_FUNC_STATIC( QVIDEOFRAME_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVIDEOFRAME_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOFRAME_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVIDEOFRAME_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOFRAME_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVIDEOFRAME_SETSELFDESTRUCTION )
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