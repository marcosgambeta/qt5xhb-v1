%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtTextToSpeech

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QTextToSpeechPlugin()
$deleteMethod=5,10,0

$prototype=virtual QTextToSpeechEngine *createTextToSpeechEngine(const QVariantMap &parameters, QObject *parent, QString *errorString) const
%% TODO: QVariantMap
%% $virtualMethod=5,10,0|QTextToSpeechEngine *|createTextToSpeechEngine|const QVariantMap &,QObject *,QString *

$extraMethods

#pragma ENDDUMP
