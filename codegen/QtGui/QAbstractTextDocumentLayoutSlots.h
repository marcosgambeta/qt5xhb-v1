%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|documentSizeChanged( const QSizeF & newSize )
$signal=|pageCountChanged( int newPages )
$signal=|update( const QRectF & rect = QRectF( 0., 0., 1000000000., 1000000000. ) )
$signal=|updateBlock( const QTextBlock & block )
$endSlotsClass
