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

$beginClass

   METHOD delete
   METHOD availableDevices
   METHOD createInput
   METHOD createOutput
   METHOD createDeviceInfo

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
