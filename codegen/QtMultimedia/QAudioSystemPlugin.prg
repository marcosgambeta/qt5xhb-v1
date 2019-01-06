%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QAudioSystemFactoryInterface

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioSystemPlugin(QObject *parent = Q_NULLPTR) (abstract)
%% $constructor=|new|QObject *=Q_NULLPTR

$prototype=~QAudioSystemPlugin()
$deleteMethod

%% TODO: is virtual ?

$prototype=virtual QList<QByteArray> availableDevices(QAudio::Mode) const override = 0
$virtualMethod=|QList<QByteArray>|availableDevices|QAudio::Mode

$prototype=virtual QAbstractAudioInput* createInput(const QByteArray& device) override = 0
$virtualMethod=|QAbstractAudioInput *|createInput|const QByteArray &

$prototype=virtual QAbstractAudioOutput* createOutput(const QByteArray& device) override = 0
$virtualMethod=|QAbstractAudioOutput *|createOutput|const QByteArray &

$prototype=virtual QAbstractAudioDeviceInfo* createDeviceInfo(const QByteArray& device, QAudio::Mode mode) override = 0
$virtualMethod=|QAbstractAudioDeviceInfo *|createDeviceInfo|const QByteArray &,QAudio::Mode

#pragma ENDDUMP
