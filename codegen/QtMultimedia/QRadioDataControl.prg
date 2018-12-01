%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QRadioDataControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=~QRadioDataControl()
$deleteMethod

$prototype=virtual QString stationId() const = 0
$virtualMethod=|QString|stationId|

$prototype=virtual QRadioData::ProgramType programType() const = 0
$virtualMethod=|QRadioData::ProgramType|programType|

$prototype=virtual QString programTypeName() const = 0
$virtualMethod=|QString|programTypeName|

$prototype=virtual QString stationName() const = 0
$virtualMethod=|QString|stationName|

$prototype=virtual QString radioText() const = 0
$virtualMethod=|QString|radioText|

$prototype=virtual void setAlternativeFrequenciesEnabled(bool enabled) = 0
$virtualMethod=|void|setAlternativeFrequenciesEnabled|bool

$prototype=virtual bool isAlternativeFrequenciesEnabled() const = 0
$virtualMethod=|bool|isAlternativeFrequenciesEnabled|

$prototype=virtual QRadioData::Error error() const = 0
$virtualMethod=|QRadioData::Error|error|

$prototype=virtual QString errorString() const = 0
$virtualMethod=|QString|errorString|

$beginSignals
$signal=|stationIdChanged(QString)
$signal=|programTypeChanged(QRadioData::ProgramType)
$signal=|programTypeNameChanged(QString)
$signal=|stationNameChanged(QString)
$signal=|radioTextChanged(QString)
$signal=|alternativeFrequenciesEnabledChanged(bool)
$signal=|error(QRadioData::Error)
$endSignals

#pragma ENDDUMP
