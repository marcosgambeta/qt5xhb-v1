$header

#include "hbclass.ch"

CLASS QRadioDataControl INHERIT QMediaControl

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

$prototype=virtual QString stationId() const = 0
$method=|QString|stationId|

$prototype=virtual QRadioData::ProgramType programType() const = 0
$method=|QRadioData::ProgramType|programType|

$prototype=virtual QString programTypeName() const = 0
$method=|QString|programTypeName|

$prototype=virtual QString stationName() const = 0
$method=|QString|stationName|

$prototype=virtual QString radioText() const = 0
$method=|QString|radioText|

$prototype=virtual void setAlternativeFrequenciesEnabled(bool enabled) = 0
$method=|void|setAlternativeFrequenciesEnabled|bool

$prototype=virtual bool isAlternativeFrequenciesEnabled() const = 0
$method=|bool|isAlternativeFrequenciesEnabled|

$prototype=virtual QRadioData::Error error() const = 0
$method=|QRadioData::Error|error|

$prototype=virtual QString errorString() const = 0
$method=|QString|errorString|

#pragma ENDDUMP
