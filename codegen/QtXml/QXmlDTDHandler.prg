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

$prototype=virtual QString errorString () const = 0
$virtualMethod=|QString|errorString|

$prototype=virtual bool notationDecl ( const QString & name, const QString & publicId, const QString & systemId ) = 0
$virtualMethod=|bool|notationDecl|const QString &,const QString &,const QString &

$prototype=virtual bool unparsedEntityDecl ( const QString & name, const QString & publicId, const QString & systemId, const QString & notationName ) = 0
$virtualMethod=|bool|unparsedEntityDecl|const QString &,const QString &,const QString &,const QString &

$extraMethods

#pragma ENDDUMP
