%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void entered()
$signal=|void error( int code, const QString & description, int sourcePosition, const QString & sourceText )
$signal=|void finished()
$signal=|void finished( const QVariant & result )
$signal=|void finished( int code, const QString & source, const QString & description, const QString & help )
$signal=|void stateChanged( int state )
$endSlotsClass
