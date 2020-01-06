%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QQmlPropertyMap(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void clear(const QString & key)
$method=|void|clear|const QString &

$prototype=bool contains(const QString & key) const
$method=|bool|contains|const QString &

$prototype=int count() const
$method=|int|count|

$prototype=void insert(const QString & key, const QVariant & value)
$method=|void|insert|const QString &,const QVariant &

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=QStringList keys() const
$method=|QStringList|keys|

$prototype=int size() const
$method=|int|size|

$prototype=QVariant value(const QString & key) const
$method=|QVariant|value|const QString &

$beginSignals
$signal=|valueChanged(QString,QVariant)
$endSignals

#pragma ENDDUMP
