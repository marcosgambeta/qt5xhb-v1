$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
#endif

CLASS QRadioData INHERIT QObject,QMediaBindableInterface

   METHOD new
   METHOD delete
   METHOD availability
   METHOD mediaObject
   METHOD stationId
   METHOD programType
   METHOD programTypeName
   METHOD stationName
   METHOD radioText
   METHOD isAlternativeFrequenciesEnabled
   METHOD error
   METHOD errorString
   METHOD setAlternativeFrequenciesEnabled

   METHOD onStationIdChanged
   METHOD onProgramTypeChanged
   METHOD onProgramTypeNameChanged
   METHOD onStationNameChanged
   METHOD onRadioTextChanged
   METHOD onAlternativeFrequenciesEnabledChanged
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QRadioData(QMediaObject *mediaObject, QObject *parent = 0)
*/
$constructor=|new|QMediaObject *,QObject *=0

$deleteMethod

/*
QMultimedia::AvailabilityStatus availability() const
*/
$method=|QMultimedia::AvailabilityStatus|availability|

/*
QMediaObject *mediaObject() const
*/
$method=|QMediaObject *|mediaObject|

/*
QString stationId() const
*/
$method=|QString|stationId|

/*
ProgramType programType() const
*/
$method=|QRadioData::ProgramType|programType|

/*
QString programTypeName() const
*/
$method=|QString|programTypeName|

/*
QString stationName() const
*/
$method=|QString|stationName|

/*
QString radioText() const
*/
$method=|QString|radioText|

/*
bool isAlternativeFrequenciesEnabled() const
*/
$method=|bool|isAlternativeFrequenciesEnabled|

/*
Error error() const
*/
$method=|QRadioData::Error|error|

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
void setAlternativeFrequenciesEnabled(bool enabled)
*/
$method=|void|setAlternativeFrequenciesEnabled|bool

#pragma ENDDUMP
