%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QAbstractDataProxy(QAbstractDataProxyPrivate *d, QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QAbstractDataProxy()
$deleteMethod

%%
%% Q_PROPERTY(DataType type READ type CONSTANT)
%%

$prototype=DataType type() const
$method=|QAbstractDataProxy::DataType|type|

%%
%%
%%

#pragma ENDDUMP
