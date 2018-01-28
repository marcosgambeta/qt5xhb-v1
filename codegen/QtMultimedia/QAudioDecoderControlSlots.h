%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void bufferAvailableChanged( bool available );
$signal=|void bufferReady();
$signal=|void durationChanged( qint64 duration );
$signal=|void error( int error, const QString & errorString );
$signal=|void finished();
$signal=|void formatChanged( const QAudioFormat & format );
$signal=|void positionChanged( qint64 position );
$signal=|void sourceChanged();
$signal=|void stateChanged( QAudioDecoder::State state );
$endSlotsClass
