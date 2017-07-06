$header

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

$destructor

#pragma BEGINDUMP

$includes

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
  QVideoEncoderSettings * o = new QVideoEncoderSettings ( *PQVIDEOENCODERSETTINGS(1) );
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

$deleteMethod

/*
int bitRate() const
*/
HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_BITRATE )
{
  QVideoEncoderSettings * obj = (QVideoEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->bitRate () );
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
    RQSTRING( obj->codec () );
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
    RQREAL( obj->frameRate () );
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
    RBOOL( obj->isNull () );
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
    obj->setEncodingMode ( (QMultimedia::EncodingMode) hb_parni(1) );
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
    obj->setEncodingOption ( PQSTRING(1), *PQVARIANT(2) );
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
    obj->setQuality ( (QMultimedia::EncodingQuality) hb_parni(1) );
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
    obj->setResolution ( *PQSIZE(1) );
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


$extraMethods

#pragma ENDDUMP
