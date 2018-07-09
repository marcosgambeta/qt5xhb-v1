%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

$deleteMethod

$prototype=QString file () const
$method=|QString|file|

$prototype=bool openFile ( QFile & file, QIODevice::OpenMode flags ) const
$method=|bool|openFile|QFile &,QIODevice::OpenMode

$prototype=QUrl url () const
$method=|QUrl|url|

#pragma ENDDUMP
