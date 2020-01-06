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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=static int cacheLimit()
$staticMethod=|int|cacheLimit|

$prototype=static void setCacheLimit(int)
$staticMethod=|void|setCacheLimit|int

$prototype=static QPixmap *find(const QString &key)
$staticMethod=|QPixmap *|find,find1|const QString &

$prototype=static bool find(const QString &key, QPixmap &pixmap)
$staticMethod=|bool|find,find2|const QString &,QPixmap &

$prototype=static bool find(const QString &key, QPixmap *pixmap)
$staticMethod=|bool|find,find3|const QString &,QPixmap *

//[1]static QPixmap *find(const QString &key)
//[2]static bool find(const QString &key, QPixmap &pixmap)
//[3]static bool find(const QString &key, QPixmap *pixmap)
//[4]static bool find(const Key &key, QPixmap *pixmap)

HB_FUNC_STATIC( QPIXMAPCACHE_FIND )
{
%% TODO: implementar
}
$addMethod=find

$prototype=static bool insert(const QString &key, const QPixmap &pixmap)
$staticMethod=|bool|insert,insert1|const QString &,const QPixmap &

//[1]static bool insert(const QString &key, const QPixmap &pixmap)
//[2]static Key insert(const QPixmap &pixmap)

HB_FUNC_STATIC( QPIXMAPCACHE_INSERT )
{
%% TODO: implementar
}
$addMethod=insert

$prototype=static void remove(const QString &key)
$staticMethod=|void|remove,remove1|const QString &

//[1]static void remove(const QString &key)
//[2]static void remove(const Key &key)

HB_FUNC_STATIC( QPIXMAPCACHE_REMOVE )
{
%% TODO: implementar
}
$addMethod=remove

$prototype=static void clear()
$staticMethod=|void|clear|

$extraMethods

#pragma ENDDUMP
