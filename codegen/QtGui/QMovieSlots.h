%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void error( QImageReader::ImageReaderError error )
$signal=|void finished()
$signal=|void frameChanged( int frameNumber )
$signal=|void resized( const QSize & size )
$signal=|void started()
$signal=|void stateChanged( QMovie::MovieState state )
$signal=|void updated( const QRect & rect )
$endSlotsClass
