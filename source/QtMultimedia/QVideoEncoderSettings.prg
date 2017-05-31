/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QVideoEncoderSettings

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bitRate
   METHOD codec
   METHOD encodingMode
   METHOD encodingOption
   METHOD frameRate
   METHOD isNull
   METHOD quality
   METHOD resolution
   METHOD setBitRate
   METHOD setCodec
   METHOD setEncodingMode
   METHOD setEncodingOption
   METHOD setFrameRate
   METHOD setQuality
   METHOD setResolution1
   METHOD setResolution2
   METHOD setResolution

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoEncoderSettings
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoEncoderSettings>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVideoEncoderSettings>
#endif

/*
QVideoEncoderSettings()
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_NEW1 )
{
  QVideoEncoderSettings * o = new QVideoEncoderSettings ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVideoEncoderSettings(const QVideoEncoderSettings & other)
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_NEW2 )
{
  QVideoEncoderSettings * par1 = (QVideoEncoderSettings *) _qt5xhb_itemGetPtr(1);
  QVideoEncoderSettings * o = new QVideoEncoderSettings ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QVideoEncoderSettings()
//[2]QVideoEncoderSettings(const QVideoEncoderSettings & other)

HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVIDEOENCODERSETTINGS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQVIDEOENCODERSETTINGS(1) )
  {
    HB_FUNC_EXEC( QVIDEOENCODERSETTINGS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_DELETE )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int bitRate() const
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_BITRATE )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bitRate () );
  }
}


/*
QString codec() const
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_CODEC )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->codec () ) );
  }
}


/*
QMultimedia::EncodingMode encodingMode() const
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_ENCODINGMODE )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->encodingMode () );
  }
}


/*
QVariant encodingOption(const QString & option) const
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_ENCODINGOPTION )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->encodingOption ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



/*
qreal frameRate() const
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_FRAMERATE )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->frameRate () );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_ISNULL )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull () );
  }
}


/*
QMultimedia::EncodingQuality quality() const
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_QUALITY )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->quality () );
  }
}


/*
QSize resolution() const
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_RESOLUTION )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->resolution () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setBitRate(int value)
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_SETBITRATE )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBitRate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCodec(const QString & codec)
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_SETCODEC )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCodec ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodingMode(QMultimedia::EncodingMode mode)
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_SETENCODINGMODE )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setEncodingMode ( (QMultimedia::EncodingMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodingOption(const QString & option, const QVariant & value)
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_SETENCODINGOPTION )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setEncodingOption ( PQSTRING(1), *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setFrameRate(qreal rate)
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_SETFRAMERATE )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFrameRate ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQuality(QMultimedia::EncodingQuality quality)
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_SETQUALITY )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setQuality ( (QMultimedia::EncodingQuality) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResolution(const QSize & resolution)
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_SETRESOLUTION1 )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->setResolution ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResolution(int width, int height)
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_SETRESOLUTION2 )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResolution ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setResolution(const QSize & resolution)
//[2]void setResolution(int width, int height)

HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_SETRESOLUTION )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QVIDEOENCODERSETTINGS_SETRESOLUTION1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QVIDEOENCODERSETTINGS_SETRESOLUTION2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_NEWFROM )
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

HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVIDEOENCODERSETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVIDEOENCODERSETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_SETSELFDESTRUCTION )
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