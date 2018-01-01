%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QRadioData(QMediaObject *mediaObject, QObject *parent = 0)
$constructor=|new|QMediaObject *,QObject *=0

$deleteMethod

$prototype=QMultimedia::AvailabilityStatus availability() const
$method=|QMultimedia::AvailabilityStatus|availability|

$prototype=QMediaObject *mediaObject() const
$method=|QMediaObject *|mediaObject|

$prototype=QString stationId() const
$method=|QString|stationId|

$prototype=ProgramType programType() const
$method=|QRadioData::ProgramType|programType|

$prototype=QString programTypeName() const
$method=|QString|programTypeName|

$prototype=QString stationName() const
$method=|QString|stationName|

$prototype=QString radioText() const
$method=|QString|radioText|

$prototype=bool isAlternativeFrequenciesEnabled() const
$method=|bool|isAlternativeFrequenciesEnabled|

$prototype=Error error() const
$method=|QRadioData::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=void setAlternativeFrequenciesEnabled(bool enabled)
$method=|void|setAlternativeFrequenciesEnabled|bool

#pragma ENDDUMP
