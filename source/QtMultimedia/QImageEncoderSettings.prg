/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVARIANT
#endif

CLASS QImageEncoderSettings

   DATA pointer
   DATA class_id INIT Class_Id_QImageEncoderSettings
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD codec
   METHOD setCodec
   METHOD resolution
   METHOD setResolution1
   METHOD setResolution2
   METHOD setResolution
   METHOD quality
   METHOD setQuality
   METHOD encodingOption
   METHOD setEncodingOption
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QImageEncoderSettings
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QImageEncoderSettings>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QImageEncoderSettings>
#endif

/*
QImageEncoderSettings()
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEW1 )
{
  QImageEncoderSettings * o = new QImageEncoderSettings (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QImageEncoderSettings *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QImageEncoderSettings(const QImageEncoderSettings& other)
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEW2 )
{
  QImageEncoderSettings * par1 = (QImageEncoderSettings *) _qt5xhb_itemGetPtr(1);
  QImageEncoderSettings * o = new QImageEncoderSettings ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QImageEncoderSettings *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QImageEncoderSettings()
//[2]QImageEncoderSettings(const QImageEncoderSettings& other)

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIMAGEENCODERSETTINGS(1) )
  {
    HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_DELETE )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isNull() const
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_ISNULL )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
QString codec() const
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_CODEC )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->codec (  ).toLatin1().data() );
  }
}


/*
void setCodec(const QString &)
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETCODEC )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setCodec ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize resolution() const
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_RESOLUTION )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->resolution (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setResolution(const QSize &)
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETRESOLUTION1 )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETRESOLUTION2 )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResolution ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setResolution(const QSize &)
//[2]void setResolution(int width, int height)

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETRESOLUTION )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_SETRESOLUTION1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_SETRESOLUTION2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMultimedia::EncodingQuality quality() const
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_QUALITY )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->quality (  ) );
  }
}


/*
void setQuality(QMultimedia::EncodingQuality quality)
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETQUALITY )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setQuality (  (QMultimedia::EncodingQuality) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVariant encodingOption(const QString &option) const
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_ENCODINGOPTION )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->encodingOption ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



/*
void setEncodingOption(const QString &option, const QVariant &value)
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETENCODINGOPTION )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setEncodingOption ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEWFROM )
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

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QIMAGEENCODERSETTINGS_NEWFROM );
}

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETSELFDESTRUCTION )
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