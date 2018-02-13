%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,4,0

$beginSlotsClass
$signal=5,4,0|void finished( QPlaceReply * reply )
$signal=5,4,0|void error( QPlaceReply * reply, QPlaceReply::Error error, const QString & errorString = QString() )
$signal=5,4,0|void placeAdded( const QString & placeId )
$signal=5,4,0|void placeUpdated( const QString & placeId )
$signal=5,4,0|void placeRemoved( const QString & placeId )
$signal=5,4,0|void categoryAdded( const QPlaceCategory & category, const QString & parentCategoryId )
$signal=5,4,0|void categoryUpdated( const QPlaceCategory & category, const QString & parentCategoryId )
$signal=5,4,0|void categoryRemoved( const QString & categoryId, const QString & parentCategoryId )
$signal=5,4,0|void dataChanged()
$endSlotsClass
