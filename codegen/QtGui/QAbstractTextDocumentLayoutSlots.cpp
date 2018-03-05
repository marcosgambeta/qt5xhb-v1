%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|documentSizeChanged( const QSizeF & newSize )
$slot=|pageCountChanged( int newPages )
$slot=|update( const QRectF & rect )
$slot=|updateBlock( const QTextBlock & block )
$endSlotsClass

$connectSignalFunction
