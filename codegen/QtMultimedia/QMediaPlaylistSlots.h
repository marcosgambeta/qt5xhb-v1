%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

$includes

$beginSlotsClass
$signal=|currentIndexChanged( int position )
$signal=|currentMediaChanged( const QMediaContent & content )
$signal=|loadFailed()
$signal=|loaded()
$signal=|mediaAboutToBeInserted( int start, int end )
$signal=|mediaAboutToBeRemoved( int start, int end )
$signal=|mediaChanged( int start, int end )
$signal=|mediaInserted( int start, int end )
$signal=|mediaRemoved( int start, int end )
$signal=|playbackModeChanged( QMediaPlaylist::PlaybackMode mode )
$endSlotsClass
