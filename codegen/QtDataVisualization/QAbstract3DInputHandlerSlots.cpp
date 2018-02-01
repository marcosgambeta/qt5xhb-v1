%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|positionChanged( const QPoint & position )
$slot=|inputViewChanged( QAbstract3DInputHandler::InputView view )
$slot=|sceneChanged( Q3DScene * scene )
$endSlotsClass

$signalMethod=|positionChanged(QPoint)
$signalMethod=|inputViewChanged(QAbstract3DInputHandler::InputView)
$signalMethod=|sceneChanged(Q3DScene*)
