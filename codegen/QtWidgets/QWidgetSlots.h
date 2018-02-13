%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=5,2,0|void windowTitleChanged( const QString & title )
$signal=5,2,0|void windowIconChanged( const QIcon & icon )
$signal=|void windowIconTextChanged( const QString & iconText )
$signal=|void customContextMenuRequested( const QPoint & pos )
$endSlotsClass
