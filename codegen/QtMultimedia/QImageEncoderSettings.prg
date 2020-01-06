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

$prototype=QImageEncoderSettings()
$internalConstructor=|new1|

$prototype=QImageEncoderSettings(const QImageEncoderSettings& other)
$internalConstructor=|new2|const QImageEncoderSettings &

//[1]QImageEncoderSettings()
//[2]QImageEncoderSettings(const QImageEncoderSettings& other)

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QImageEncoderSettings_new1();
  }
  else if( ISNUMPAR(1) && ISQIMAGEENCODERSETTINGS(1) )
  {
    QImageEncoderSettings_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QImageEncoderSettings()
$deleteMethod

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=QString codec() const
$method=|QString|codec|

$prototype=void setCodec(const QString &)
$method=|void|setCodec|const QString &

$prototype=QSize resolution() const
$method=|QSize|resolution|

$prototype=void setResolution(const QSize &)
$internalMethod=|void|setResolution,setResolution1|const QSize &

$prototype=void setResolution(int width, int height)
$internalMethod=|void|setResolution,setResolution2|int,int

//[1]void setResolution(const QSize &)
//[2]void setResolution(int width, int height)

HB_FUNC_STATIC( QIMAGEENCODERSETTINGS_SETRESOLUTION )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QImageEncoderSettings_setResolution1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QImageEncoderSettings_setResolution2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setResolution

$prototype=QMultimedia::EncodingQuality quality() const
$method=|QMultimedia::EncodingQuality|quality|

$prototype=void setQuality(QMultimedia::EncodingQuality quality)
$method=|void|setQuality|QMultimedia::EncodingQuality

$prototype=QVariant encodingOption(const QString &option) const
$method=|QVariant|encodingOption|const QString &

$prototype=QVariantMap encodingOptions() const
%% TODO: QVariantMap

$prototype=void setEncodingOption(const QString &option, const QVariant &value)
$method=|void|setEncodingOption|const QString &,const QVariant &

$prototype=void setEncodingOptions(const QVariantMap &options)
%% TODO: QVariantMap

$extraMethods

#pragma ENDDUMP
