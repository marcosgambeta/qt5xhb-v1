$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QABSTRACTAUDIOINPUT
REQUEST QABSTRACTAUDIOOUTPUT
REQUEST QABSTRACTAUDIODEVICEINFO
#endif

CLASS QAudioSystemPlugin INHERIT QObject,QAudioSystemFactoryInterface

   METHOD delete
   METHOD availableDevices
   METHOD createInput
   METHOD createOutput
   METHOD createDeviceInfo

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QList<QByteArray> availableDevices(QAudio::Mode) const = 0
$method=|QList<QByteArray>|availableDevices|QAudio::Mode

$prototype=virtual QAbstractAudioInput* createInput(const QByteArray& device) = 0
$method=|QAbstractAudioInput *|createInput|const QByteArray &

$prototype=virtual QAbstractAudioOutput* createOutput(const QByteArray& device) = 0
$method=|QAbstractAudioOutput *|createOutput|const QByteArray &

$prototype=virtual QAbstractAudioDeviceInfo* createDeviceInfo(const QByteArray& device, QAudio::Mode mode) = 0
$method=|QAbstractAudioDeviceInfo *|createDeviceInfo|const QByteArray &,QAudio::Mode

#pragma ENDDUMP
