%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTTOSPEECHENGINE
#endif

CLASS QTextToSpeechPlugin

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createTextToSpeechEngine

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QTextToSpeechPlugin()
$deleteMethod=5,10,0

$prototype=virtual QTextToSpeechEngine *createTextToSpeechEngine(const QVariantMap &parameters, QObject *parent, QString *errorString) const
%% TODO: QVariantMap
%% $virtualMethod=5,10,0|QTextToSpeechEngine *|createTextToSpeechEngine|const QVariantMap &,QObject *,QString *

#pragma ENDDUMP
