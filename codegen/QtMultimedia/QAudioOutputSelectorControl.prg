%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAudioOutputSelectorControl INHERIT QMediaControl

%%   METHOD new
   METHOD delete

   METHOD activeOutput
   METHOD availableOutputs
   METHOD defaultOutput
   METHOD outputDescription
   METHOD setActiveOutput

   METHOD onActiveOutputChanged
   METHOD onAvailableOutputsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioOutputSelectorControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QAudioOutputSelectorControl()
$deleteMethod

$prototype=virtual QString activeOutput() const = 0
$virtualMethod=|QString|activeOutput|

$prototype=virtual QList<QString> availableOutputs() const = 0
$virtualMethod=|QList<QString>|availableOutputs|

$prototype=virtual QString defaultOutput() const = 0
$virtualMethod=|QString|defaultOutput|

$prototype=virtual QString outputDescription(const QString & name) const = 0
$virtualMethod=|QString|outputDescription|const QString &

$prototype=virtual void setActiveOutput(const QString & name) = 0
$virtualSlotMethod=|void|setActiveOutput|const QString &

$beginSignals
$signalMethod=|activeOutputChanged(QString)
$signalMethod=|availableOutputsChanged()
$endSignals

#pragma ENDDUMP
