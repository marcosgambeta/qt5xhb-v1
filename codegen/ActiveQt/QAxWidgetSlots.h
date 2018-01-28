%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void exception( int code, const QString & source, const QString & desc, const QString & help );
$signal=|void propertyChanged( const QString & name );
$signal=|void signal( const QString & name, int argc, void * argv );
$endSlotsClass
