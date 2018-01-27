%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=5,2,0|windowTitleChanged( const QString & title )
$slot=5,2,0|windowIconChanged( const QIcon & icon )
$slot=|windowIconTextChanged( const QString & iconText )
$slot=|customContextMenuRequested( const QPoint & pos )
$endSlotsClass

$signalMethod=5,2,0|windowTitleChanged(QString)
$signalMethod=5,2,0|windowIconChanged(QIcon)
$signalMethod=|windowIconTextChanged(QString)
$signalMethod=|customContextMenuRequested(QPoint)
