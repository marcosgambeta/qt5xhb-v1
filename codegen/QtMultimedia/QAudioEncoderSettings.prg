$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QAudioEncoderSettings

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bitRate
   METHOD channelCount
   METHOD codec
   METHOD encodingMode
   METHOD encodingOption
   METHOD isNull
   METHOD quality
   METHOD sampleRate
   METHOD setBitRate
   METHOD setChannelCount
   METHOD setCodec
   METHOD setEncodingMode
   METHOD setEncodingOption
   METHOD setQuality
   METHOD setSampleRate

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
QAudioEncoderSettings()
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_NEW1 )
{
  QAudioEncoderSettings * o = new QAudioEncoderSettings ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QAudioEncoderSettings(const QAudioEncoderSettings & other)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_NEW2 )
{
  QAudioEncoderSettings * o = new QAudioEncoderSettings ( *PQAUDIOENCODERSETTINGS(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QAudioEncoderSettings()
//[2]QAudioEncoderSettings(const QAudioEncoderSettings & other)

HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOENCODERSETTINGS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUDIOENCODERSETTINGS(1) )
  {
    HB_FUNC_EXEC( QAUDIOENCODERSETTINGS_NEW2 );
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
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_BITRATE )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->bitRate () );
  }
}


/*
int channelCount() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_CHANNELCOUNT )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->channelCount () );
  }
}


/*
QString codec() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_CODEC )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->codec () );
  }
}


/*
QMultimedia::EncodingMode encodingMode() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_ENCODINGMODE )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->encodingMode () );
  }
}


/*
QVariant encodingOption(const QString & option) const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_ENCODINGOPTION )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->encodingOption ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



/*
bool isNull() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_ISNULL )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
QMultimedia::EncodingQuality quality() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_QUALITY )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->quality () );
  }
}


/*
int sampleRate() const
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SAMPLERATE )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->sampleRate () );
  }
}


/*
void setBitRate(int rate)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETBITRATE )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBitRate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setChannelCount(int channels)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETCHANNELCOUNT )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setChannelCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCodec(const QString & codec)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETCODEC )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCodec ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodingMode(QMultimedia::EncodingMode mode)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETENCODINGMODE )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEncodingMode ( (QMultimedia::EncodingMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodingOption(const QString & option, const QVariant & value)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETENCODINGOPTION )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEncodingOption ( PQSTRING(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setQuality(QMultimedia::EncodingQuality quality)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETQUALITY )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setQuality ( (QMultimedia::EncodingQuality) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSampleRate(int rate)
*/
HB_FUNC_STATIC( QAUDIOENCODERSETTINGS_SETSAMPLERATE )
{
  QAudioEncoderSettings * obj = (QAudioEncoderSettings *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSampleRate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



$extraMethods

#pragma ENDDUMP
