%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstract3DAxis

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QCategory3DAxis(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=virtual ~QCategory3DAxis()
$deleteMethod

%%
%% Q_PROPERTY(QStringList labels READ labels WRITE setLabels NOTIFY labelsChanged)
%%

$prototype=QStringList labels() const
$method=|QStringList|labels|

$prototype=void setLabels(const QStringList &labels)
$method=|void|setLabels|const QStringList &

%%
%%
%%

$beginSignals
$signal=|labelsChanged()
$endSignals

#pragma ENDDUMP
