%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|error( QImageReader::ImageReaderError error )
$slot=|finished()
$slot=|frameChanged( int frameNumber )
$slot=|resized( const QSize & size )
$slot=|started()
$slot=|stateChanged( QMovie::MovieState state )
$slot=|updated( const QRect & rect )
$endSlotsClass

$signalMethod=|error(QImageReader::ImageReaderError)
$signalMethod=|finished()
$signalMethod=|frameChanged(int)
$signalMethod=|resized(QSize)
$signalMethod=|started()
$signalMethod=|stateChanged(QMovie::MovieState)
$signalMethod=|updated(QRect)
