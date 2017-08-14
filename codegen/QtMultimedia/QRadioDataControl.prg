$header

#include "hbclass.ch"

CLASS QRadioDataControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD stationId
   METHOD programType
   METHOD programTypeName
   METHOD stationName
   METHOD radioText
   METHOD setAlternativeFrequenciesEnabled
   METHOD isAlternativeFrequenciesEnabled
   METHOD error
   METHOD errorString

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

$deleteMethod

/*
virtual QString stationId() const = 0
*/
$method=|QString|stationId|

/*
virtual QRadioData::ProgramType programType() const = 0
*/
$method=|QRadioData::ProgramType|programType|

/*
virtual QString programTypeName() const = 0
*/
$method=|QString|programTypeName|

/*
virtual QString stationName() const = 0
*/
$method=|QString|stationName|

/*
virtual QString radioText() const = 0
*/
$method=|QString|radioText|

/*
virtual void setAlternativeFrequenciesEnabled(bool enabled) = 0
*/
$method=|void|setAlternativeFrequenciesEnabled|bool

/*
virtual bool isAlternativeFrequenciesEnabled() const = 0
*/
$method=|bool|isAlternativeFrequenciesEnabled|

/*
virtual QRadioData::Error error() const = 0
*/
$method=|QRadioData::Error|error|

/*
virtual QString errorString() const = 0
*/
$method=|QString|errorString|

#pragma ENDDUMP
