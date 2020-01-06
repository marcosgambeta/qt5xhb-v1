%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=ActiveQt

$header

$includes

$beginSlotsClass
$signal=|entered()
$signal=|error( int code, const QString & description, int sourcePosition, const QString & sourceText )
$signal=|finished()
$signal=|finished( const QVariant & result )
$signal=|finished( int code, const QString & source, const QString & description, const QString & help )
$signal=|stateChanged( int state )
$endSlotsClass
