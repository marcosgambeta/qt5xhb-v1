%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void currentIndexChanged( int position );
$signal=|void currentMediaChanged( const QMediaContent & content );
$signal=|void loadFailed();
$signal=|void loaded();
$signal=|void mediaAboutToBeInserted( int start, int end );
$signal=|void mediaAboutToBeRemoved( int start, int end );
$signal=|void mediaChanged( int start, int end );
$signal=|void mediaInserted( int start, int end );
$signal=|void mediaRemoved( int start, int end );
$signal=|void playbackModeChanged( QMediaPlaylist::PlaybackMode mode );
$endSlotsClass
