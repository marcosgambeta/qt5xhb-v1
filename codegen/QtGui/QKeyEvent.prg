%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QInputEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QKeyEvent ( Type type, int key, Qt::KeyboardModifiers modifiers, const QString & text = QString(), bool autorep = false, ushort count = 1 )
$constructor=|new|QEvent::Type,int,Qt::KeyboardModifiers,const QString &=QString(),bool=false,ushort=1

$deleteMethod

$prototype=int count () const
$method=|int|count|

$prototype=bool isAutoRepeat () const
$method=|bool|isAutoRepeat|

$prototype=int key () const
$method=|int|key|

$prototype=bool matches ( QKeySequence::StandardKey key ) const
$method=|bool|matches|QKeySequence::StandardKey

$prototype=Qt::KeyboardModifiers modifiers () const
$method=|Qt::KeyboardModifiers|modifiers|

$prototype=quint32 nativeModifiers () const
$method=|quint32|nativeModifiers|

$prototype=quint32 nativeScanCode () const
$method=|quint32|nativeScanCode|

$prototype=quint32 nativeVirtualKey () const
$method=|quint32|nativeVirtualKey|

$prototype=QString text () const
$method=|QString|text|

#pragma ENDDUMP
