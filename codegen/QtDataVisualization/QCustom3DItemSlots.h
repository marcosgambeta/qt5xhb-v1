%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void meshFileChanged( const QString & meshFile )
$signal=|void positionAbsoluteChanged( bool positionAbsolute )
$signal=|void positionChanged( const QVector3D & position )
$signal=|void rotationChanged( const QQuaternion & rotation )
$signal=|void scalingAbsoluteChanged( bool scalingAbsolute )
$signal=|void scalingChanged( const QVector3D & scaling )
$signal=|void shadowCastingChanged( bool shadowCasting )
$signal=|void textureFileChanged( const QString & textureFile )
$signal=|void visibleChanged( bool visible )
$endSlotsClass
