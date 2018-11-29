%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QTextDocument>

$prototype=QTextFormat format() const
$method=|QTextFormat|format|

$prototype=int formatIndex() const
$method=|int|formatIndex|

$prototype=QTextDocument *document() const
$method=|QTextDocument *|document|

$prototype=int objectIndex() const
$method=|int|objectIndex|

$prototype=QTextDocumentPrivate *docHandle() const
%% TODO: implementar ?
%% $method=|QTextDocumentPrivate *|docHandle|

#pragma ENDDUMP
