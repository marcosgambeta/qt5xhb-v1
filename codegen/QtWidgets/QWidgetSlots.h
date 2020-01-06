%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

$includes

$beginSlotsClass
$signal=5,2,0|windowTitleChanged( const QString & title )
$signal=5,2,0|windowIconChanged( const QIcon & icon )
$signal=|windowIconTextChanged( const QString & iconText )
$signal=|customContextMenuRequested( const QPoint & pos )
$endSlotsClass
