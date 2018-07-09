%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCameraImageProcessing(QCamera *camera) (private)

$prototype=~QCameraImageProcessing() (private)

$prototype=qreal contrast() const
$method=|qreal|contrast|

$prototype=qreal denoisingLevel() const
$method=|qreal|denoisingLevel|

$prototype=bool isAvailable() const
$method=|bool|isAvailable|

$prototype=bool isWhiteBalanceModeSupported(WhiteBalanceMode mode) const
$method=|bool|isWhiteBalanceModeSupported|QCameraImageProcessing::WhiteBalanceMode

$prototype=qreal manualWhiteBalance() const
$method=|qreal|manualWhiteBalance|

$prototype=qreal saturation() const
$method=|qreal|saturation|

$prototype=void setContrast(qreal value)
$method=|void|setContrast|qreal

$prototype=void setDenoisingLevel(qreal value)
$method=|void|setDenoisingLevel|qreal

$prototype=void setManualWhiteBalance(qreal colorTemperature)
$method=|void|setManualWhiteBalance|qreal

$prototype=void setSaturation(qreal value)
$method=|void|setSaturation|qreal

$prototype=void setSharpeningLevel(qreal level)
$method=|void|setSharpeningLevel|qreal

$prototype=void setWhiteBalanceMode(WhiteBalanceMode mode)
$method=|void|setWhiteBalanceMode|QCameraImageProcessing::WhiteBalanceMode

$prototype=qreal sharpeningLevel() const
$method=|qreal|sharpeningLevel|

$prototype=WhiteBalanceMode whiteBalanceMode() const
$method=|QCameraImageProcessing::WhiteBalanceMode|whiteBalanceMode|

$prototype=qreal brightness() const
%% TODO: check version
$method=5,7,0|qreal|brightness|

$prototype=void setBrightness(qreal value)
%% TODO: check version
$method=5,7,0|void|setBrightness|qreal

$prototype=ColorFilter colorFilter() const
$method=5,5,0|QCameraImageProcessing::ColorFilter|colorFilter|

$prototype=void setColorFilter(ColorFilter filter)
$method=5,5,0|void|setColorFilter|QCameraImageProcessing::ColorFilter

$prototype=bool isColorFilterSupported(ColorFilter filter) const
$method=5,5,0|bool|isColorFilterSupported|QCameraImageProcessing::ColorFilter

#pragma ENDDUMP
