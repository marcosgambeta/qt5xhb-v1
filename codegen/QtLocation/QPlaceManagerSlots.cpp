%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=5,4,0|finished( QPlaceReply * reply )
$slot=5,4,0|error( QPlaceReply * reply, QPlaceReply::Error error, const QString & errorString )
$slot=5,4,0|placeAdded( const QString & placeId )
$slot=5,4,0|placeUpdated( const QString & placeId )
$slot=5,4,0|placeRemoved( const QString & placeId )
$slot=5,4,0|categoryAdded( const QPlaceCategory & category, const QString & parentId )
$slot=5,4,0|categoryUpdated( const QPlaceCategory & category, const QString & parentId )
$slot=5,4,0|categoryRemoved( const QString & categoryId, const QString & parentId )
$slot=5,4,0|dataChanged()
$endSlotsClass

$signalMethod=5,4,0|finished(QPlaceReply*)
$signalMethod=5,4,0|error(QPlaceReply*,QPlaceReply::Error,QString)
$signalMethod=5,4,0|placeAdded(QString)
$signalMethod=5,4,0|placeUpdated(QString)
$signalMethod=5,4,0|placeRemoved(QString)
$signalMethod=5,4,0|categoryAdded(QPlaceCategory,QString)
$signalMethod=5,4,0|categoryUpdated(QPlaceCategory,QString)
$signalMethod=5,4,0|categoryRemoved(QString,QString)
$signalMethod=5,4,0|dataChanged()
