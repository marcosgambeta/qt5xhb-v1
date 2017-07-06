$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVARIANT
#endif

CLASS QImageEncoderSettings

   DATA pointer
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

$destructor

#pragma BEGINDUMP

$includes

/*
QImageEncoderSettings()
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEW1 )
{
  QImageEncoderSettings * o = new QImageEncoderSettings ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QImageEncoderSettings(const QImageEncoderSettings& other)
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEW2 )
{
  QImageEncoderSettings * o = new QImageEncoderSettings ( *PQIMAGEENCODERSETTINGS(1) );
  _qt5xhb_storePointerAndFlag( o, false );
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

$deleteMethod

/*
bool isNull() const
*/
HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_ISNULL )
{
  QImageEncoderSettings * obj = (QImageEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
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
    RQSTRING( obj->codec () );
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
    obj->setCodec ( PQSTRING(1) );
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
    QSize * ptr = new QSize( obj->resolution () );
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
    obj->setResolution ( *PQSIZE(1) );
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
    obj->setResolution ( PINT(1), PINT(2) );
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
    hb_retni( obj->quality () );
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
    obj->setQuality ( (QMultimedia::EncodingQuality) hb_parni(1) );
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
    QVariant * ptr = new QVariant( obj->encodingOption ( PQSTRING(1) ) );
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
    obj->setEncodingOption ( PQSTRING(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




$extraMethods

#pragma ENDDUMP
