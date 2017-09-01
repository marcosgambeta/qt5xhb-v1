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

/*
qreal contrast() const
*/
$method=|qreal|contrast|

/*
qreal denoisingLevel() const
*/
$method=|qreal|denoisingLevel|

/*
bool isAvailable() const
*/
$method=|bool|isAvailable|

/*
bool isWhiteBalanceModeSupported(WhiteBalanceMode mode) const
*/
$method=|bool|isWhiteBalanceModeSupported|QCameraImageProcessing::WhiteBalanceMode

/*
qreal manualWhiteBalance() const
*/
$method=|qreal|manualWhiteBalance|

/*
qreal saturation() const
*/
$method=|qreal|saturation|

/*
void setContrast(qreal value)
*/
$method=|void|setContrast|qreal

/*
void setDenoisingLevel(qreal level)
*/
$method=|void|setDenoisingLevel|qreal

/*
void setManualWhiteBalance(qreal colorTemperature)
*/
$method=|void|setManualWhiteBalance|qreal

/*
void setSaturation(qreal value)
*/
$method=|void|setSaturation|qreal

/*
void setSharpeningLevel(qreal level)
*/
$method=|void|setSharpeningLevel|qreal

/*
void setWhiteBalanceMode(WhiteBalanceMode mode)
*/
$method=|void|setWhiteBalanceMode|QCameraImageProcessing::WhiteBalanceMode

/*
qreal sharpeningLevel() const
*/
$method=|qreal|sharpeningLevel|

/*
WhiteBalanceMode whiteBalanceMode() const
*/
$method=|QCameraImageProcessing::WhiteBalanceMode|whiteBalanceMode|

#pragma ENDDUMP
