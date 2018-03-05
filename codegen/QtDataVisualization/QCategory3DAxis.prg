%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCategory3DAxis INHERIT QAbstract3DAxis

   METHOD new
   METHOD delete

   METHOD labels
   METHOD setLabels

   METHOD onLabelsChanged

   DESTRUCTOR destroyObject

END CLASS

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

$connectSignalFunction

$signalMethod=|labelsChanged()

#pragma ENDDUMP
