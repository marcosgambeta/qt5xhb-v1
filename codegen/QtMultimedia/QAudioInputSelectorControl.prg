%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAudioInputSelectorControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD activeInput
   METHOD availableInputs
   METHOD defaultInput
   METHOD inputDescription
   METHOD setActiveInput

   METHOD onActiveInputChanged
   METHOD onAvailableInputsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioInputSelectorControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QAudioInputSelectorControl()
$deleteMethod

$prototype=virtual QString activeInput() const = 0
$virtualMethod=|QString|activeInput|

$prototype=virtual QList<QString> availableInputs() const = 0
$virtualMethod=|QList<QString>|availableInputs|

$prototype=virtual QString defaultInput() const = 0
$virtualMethod=|QString|defaultInput|

$prototype=virtual QString inputDescription(const QString & name) const = 0
$virtualMethod=|QString|inputDescription|const QString &

$prototype=virtual void setActiveInput(const QString & name) = 0
$virtualSlotMethod=|void|setActiveInput|const QString &

$beginSignals
$signalMethod=|activeInputChanged(QString)
$signalMethod=|availableInputsChanged()
$endSignals

#pragma ENDDUMP
