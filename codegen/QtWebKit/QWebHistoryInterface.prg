%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD delete

   METHOD addHistoryEntry
   METHOD defaultInterface
   METHOD historyContains
   METHOD setDefaultInterface

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void addHistoryEntry ( const QString & url ) = 0
$virtualMethod=|void|addHistoryEntry|const QString &

$prototype=virtual bool historyContains ( const QString & url ) const = 0
$virtualMethod=|bool|historyContains|const QString &

$prototype=static QWebHistoryInterface * defaultInterface ()
$staticMethod=|QWebHistoryInterface *|defaultInterface|

$prototype=static void setDefaultInterface ( QWebHistoryInterface * defaultInterface )
$staticMethod=|void|setDefaultInterface|QWebHistoryInterface *

#pragma ENDDUMP
