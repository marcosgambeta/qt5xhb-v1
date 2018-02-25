%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|error( QImageReader::ImageReaderError error )
$signal=|finished()
$signal=|frameChanged( int frameNumber )
$signal=|resized( const QSize & size )
$signal=|started()
$signal=|stateChanged( QMovie::MovieState state )
$signal=|updated( const QRect & rect )
$endSlotsClass
