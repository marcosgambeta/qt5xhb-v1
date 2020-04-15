%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QVideoEncoderSettings()
$internalConstructor=|new1|

$prototype=QVideoEncoderSettings(const QVideoEncoderSettings & other)
$internalConstructor=|new2|const QVideoEncoderSettings &

/*
[1]QVideoEncoderSettings()
[2]QVideoEncoderSettings(const QVideoEncoderSettings & other)
*/

HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVideoEncoderSettings_new1();
  }
  else if( ISNUMPAR(1) && ISQVIDEOENCODERSETTINGS(1) )
  {
    QVideoEncoderSettings_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QVideoEncoderSettings()
$deleteMethod

$prototype=int bitRate() const
$method=|int|bitRate|

$prototype=QString codec() const
$method=|QString|codec|

$prototype=QMultimedia::EncodingMode encodingMode() const
$method=|QMultimedia::EncodingMode|encodingMode|

$prototype=QVariant encodingOption(const QString & option) const
$method=|QVariant|encodingOption|const QString &

$prototype=QVariantMap encodingOptions() const
%% TODO: QVariantMap

$prototype=qreal frameRate() const
$method=|qreal|frameRate|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=QMultimedia::EncodingQuality quality() const
$method=|QMultimedia::EncodingQuality|quality|

$prototype=QSize resolution() const
$method=|QSize|resolution|

$prototype=void setBitRate(int bitrate)
$method=|void|setBitRate|int

$prototype=void setCodec(const QString & codec)
$method=|void|setCodec|const QString &

$prototype=void setEncodingMode(QMultimedia::EncodingMode mode)
$method=|void|setEncodingMode|QMultimedia::EncodingMode

$prototype=void setEncodingOption(const QString & option, const QVariant & value)
$method=|void|setEncodingOption|const QString &,const QVariant &

$prototype=void setEncodingOptions(const QVariantMap &options)
%% TODO: QVariantMap

$prototype=void setFrameRate(qreal rate)
$method=|void|setFrameRate|qreal

$prototype=void setQuality(QMultimedia::EncodingQuality quality)
$method=|void|setQuality|QMultimedia::EncodingQuality

$prototype=void setResolution(const QSize & resolution)
$internalMethod=|void|setResolution,setResolution1|const QSize &

$prototype=void setResolution(int width, int height)
$internalMethod=|void|setResolution,setResolution2|int,int

/*
[1]void setResolution(const QSize & resolution)
[2]void setResolution(int width, int height)
*/

HB_FUNC_STATIC( QVIDEOENCODERSETTINGS_SETRESOLUTION )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QVideoEncoderSettings_setResolution1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVideoEncoderSettings_setResolution2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setResolution

$extraMethods

#pragma ENDDUMP
