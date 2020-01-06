%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QAudioSystemFactoryInterface()
$deleteMethod

$prototype=virtual QList<QByteArray> availableDevices(QAudio::Mode) const = 0
$virtualMethod=|QList<QByteArray>|availableDevices|QAudio::Mode

$prototype=virtual QAbstractAudioInput* createInput(const QByteArray& device) = 0
$virtualMethod=|QAbstractAudioInput *|createInput|const QByteArray &

$prototype=virtual QAbstractAudioOutput* createOutput(const QByteArray& device) = 0
$virtualMethod=|QAbstractAudioOutput *|createOutput|const QByteArray &

$prototype=virtual QAbstractAudioDeviceInfo* createDeviceInfo(const QByteArray& device, QAudio::Mode mode) = 0
$virtualMethod=|QAbstractAudioDeviceInfo *|createDeviceInfo|const QByteArray &,QAudio::Mode

$extraMethods

#pragma ENDDUMP
