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

$beginClassFrom=Q3DObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit Q3DLight(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=virtual ~Q3DLight()
$deleteMethod

%%
%% Q_PROPERTY(bool autoPosition READ isAutoPosition WRITE setAutoPosition NOTIFY autoPositionChanged REVISION 1)
%%

$prototype=void setAutoPosition(bool enabled)
$method=5,9,0|void|setAutoPosition|bool

$prototype=bool isAutoPosition()
$method=5,9,0|bool|isAutoPosition|

%%
%%
%%

$beginSignals
$signal=5,9,0|autoPositionChanged(bool)
$endSignals

#pragma ENDDUMP
