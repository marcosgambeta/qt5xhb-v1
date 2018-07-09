%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaRecorder

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioRecorder(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=~QAudioRecorder()
$deleteMethod

%%
%% Q_PROPERTY(QString audioInput READ audioInput WRITE setAudioInput NOTIFY audioInputChanged)
%%

$prototype=QString audioInput() const
$method=|QString|audioInput|

$prototype=void setAudioInput(const QString & name)
$slotMethod=|void|setAudioInput|const QString &

%%
%%
%%

$prototype=QString audioInputDescription(const QString & name) const
$method=|QString|audioInputDescription|const QString &

$prototype=QStringList audioInputs() const
$method=|QStringList|audioInputs|

$prototype=QString defaultAudioInput() const
$method=|QString|defaultAudioInput|

$beginSignals
$signal=|audioInputChanged(QString)
$signal=|availableAudioInputsChanged()
$endSignals

#pragma ENDDUMP
