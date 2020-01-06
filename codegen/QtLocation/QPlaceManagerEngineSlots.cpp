%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

$includes=5,4,0

$beginSlotsClass
$slot=5,4,0|finished( QPlaceReply * reply )
$slot=5,4,0|error( QPlaceReply * reply, QPlaceReply::Error error, const QString & errorString )
$slot=5,4,0|placeAdded( const QString & placeId )
$slot=5,4,0|placeUpdated( const QString & placeId )
$slot=5,4,0|placeRemoved( const QString & placeId )
$slot=5,4,0|categoryAdded( const QPlaceCategory & category, const QString & parentCategoryId )
$slot=5,4,0|categoryUpdated( const QPlaceCategory & category, const QString & parentCategoryId )
$slot=5,4,0|categoryRemoved( const QString & categoryId, const QString & parentCategoryId )
$slot=5,4,0|dataChanged()
$endSlotsClass
