%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QABSTRACTAUDIOINPUT
REQUEST QABSTRACTAUDIOOUTPUT
REQUEST QABSTRACTAUDIODEVICEINFO
#endif

$beginClassFrom=QObject,QAudioSystemFactoryInterface

%%   METHOD new
   METHOD delete

   METHOD availableDevices
   METHOD createInput
   METHOD createOutput
   METHOD createDeviceInfo

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
