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
$constructor=|new1|

/*
QVideoEncoderSettings(const QVideoEncoderSettings & other)
*/
$constructor=|new2|const QVideoEncoderSettings &

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
$method=|int|bitRate|

/*
QString codec() const
*/
$method=|QString|codec|

/*
QMultimedia::EncodingMode encodingMode() const
*/
$method=|QMultimedia::EncodingMode|encodingMode|

/*
QVariant encodingOption(const QString & option) const
*/
$method=|QVariant|encodingOption|const QString &

/*
qreal frameRate() const
*/
$method=|qreal|frameRate|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
QMultimedia::EncodingQuality quality() const
*/
$method=|QMultimedia::EncodingQuality|quality|

/*
QSize resolution() const
*/
$method=|QSize|resolution|

/*
void setBitRate(int value)
*/
$method=|void|setBitRate|int

/*
void setCodec(const QString & codec)
*/
$method=|void|setCodec|const QString &

/*
void setEncodingMode(QMultimedia::EncodingMode mode)
*/
$method=|void|setEncodingMode|QMultimedia::EncodingMode

/*
void setEncodingOption(const QString & option, const QVariant & value)
*/
$method=|void|setEncodingOption|const QString &,const QVariant &

/*
void setFrameRate(qreal rate)
*/
$method=|void|setFrameRate|qreal

/*
void setQuality(QMultimedia::EncodingQuality quality)
*/
$method=|void|setQuality|QMultimedia::EncodingQuality

/*
void setResolution(const QSize & resolution)
*/
$method=|void|setResolution,setResolution1|const QSize &

/*
void setResolution(int width, int height)
*/
$method=|void|setResolution,setResolution2|int,int

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
