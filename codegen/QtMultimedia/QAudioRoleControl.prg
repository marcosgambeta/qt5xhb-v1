%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QMediaControl

%%   METHOD new
   METHOD delete

   METHOD audioRole
   METHOD setAudioRole
   METHOD supportedAudioRoles

%%   METHOD onAudioRoleChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,6,0

$prototype=explicit QAudioRoleControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=virtual ~QAudioRoleControl()
$deleteMethod=5,6,0

$prototype=virtual QAudio::Role audioRole() const = 0
$virtualMethod=5,6,0|QAudio::Role|audioRole|

$prototype=virtual void setAudioRole(QAudio::Role role) = 0
$virtualMethod=5,6,0|void|setAudioRole|QAudio::Role

$prototype=virtual QList<QAudio::Role> supportedAudioRoles() const = 0
$virtualMethod=5,6,0|QList<QAudio::Role>|supportedAudioRoles|

#pragma ENDDUMP

%% Q_SIGNALS:
%% void audioRoleChanged(QAudio::Role role);
