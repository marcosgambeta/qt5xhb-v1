%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAudioRecorder INHERIT QMediaRecorder

   METHOD new
   METHOD delete
   METHOD audioInput
   METHOD audioInputDescription
   METHOD audioInputs
   METHOD defaultAudioInput
   METHOD setAudioInput

   METHOD onAudioInputChanged
   METHOD onAvailableAudioInputsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioRecorder(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QString audioInput() const
$method=|QString|audioInput|

$prototype=QString audioInputDescription(const QString & name) const
$method=|QString|audioInputDescription|const QString &

$prototype=QStringList audioInputs() const
$method=|QStringList|audioInputs|

$prototype=QString defaultAudioInput() const
$method=|QString|defaultAudioInput|

$prototype=void setAudioInput(const QString & name)
$method=|void|setAudioInput|const QString &

#pragma ENDDUMP
