%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool comment ( const QString & ch ) = 0
$virtualMethod=|bool|comment|const QString &

$prototype=virtual bool endCDATA () = 0
$virtualMethod=|bool|endCDATA|

$prototype=virtual bool endDTD () = 0
$virtualMethod=|bool|endDTD|

$prototype=virtual bool endEntity ( const QString & name ) = 0
$virtualMethod=|bool|endEntity|const QString &

$prototype=virtual QString errorString () const = 0
$virtualMethod=|QString|errorString|

$prototype=virtual bool startCDATA () = 0
$virtualMethod=|bool|startCDATA|

$prototype=virtual bool startDTD ( const QString & name, const QString & publicId, const QString & systemId ) = 0
$virtualMethod=|bool|startDTD|const QString &,const QString &,const QString &

$prototype=virtual bool startEntity ( const QString & name ) = 0
$virtualMethod=|bool|startEntity|const QString &

$extraMethods

#pragma ENDDUMP
