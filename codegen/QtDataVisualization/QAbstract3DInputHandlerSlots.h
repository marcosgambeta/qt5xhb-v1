%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

using namespace QtDataVisualization;

$beginSlotsClass
$signal=|inputViewChanged( QAbstract3DInputHandler::InputView view )
$signal=|positionChanged( const QPoint & position )
$signal=|sceneChanged( Q3DScene * scene )
$endSlotsClass
