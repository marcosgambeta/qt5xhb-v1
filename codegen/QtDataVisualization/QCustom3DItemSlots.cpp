%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|meshFileChanged( const QString & meshFile )
$slot=|positionAbsoluteChanged( bool positionAbsolute )
$slot=|positionChanged( const QVector3D & position )
$slot=|rotationChanged( const QQuaternion & rotation )
$slot=|scalingAbsoluteChanged( bool scalingAbsolute )
$slot=|scalingChanged( const QVector3D & scaling )
$slot=|shadowCastingChanged( bool shadowCasting )
$slot=|textureFileChanged( const QString & textureFile )
$slot=|visibleChanged( bool visible )
$endSlotsClass

$signalMethod=|meshFileChanged(QString)
$signalMethod=|positionAbsoluteChanged(bool)
$signalMethod=|positionChanged(QVector3D)
$signalMethod=|rotationChanged(QQuaternion)
$signalMethod=|scalingAbsoluteChanged(bool)
$signalMethod=|scalingChanged(QVector3D)
$signalMethod=|shadowCastingChanged(bool)
$signalMethod=|textureFileChanged(QString)
$signalMethod=|visibleChanged(bool)
