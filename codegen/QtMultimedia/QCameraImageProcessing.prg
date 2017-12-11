$header

#include "hbclass.ch"

CLASS QCameraImageProcessing INHERIT QObject

   METHOD contrast
   METHOD denoisingLevel
   METHOD isAvailable
   METHOD isWhiteBalanceModeSupported
   METHOD manualWhiteBalance
   METHOD saturation
   METHOD setContrast
   METHOD setDenoisingLevel
   METHOD setManualWhiteBalance
   METHOD setSaturation
   METHOD setSharpeningLevel
   METHOD setWhiteBalanceMode
   METHOD sharpeningLevel
   METHOD whiteBalanceMode

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

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

$prototype=void setDenoisingLevel(qreal level)
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

#pragma ENDDUMP
