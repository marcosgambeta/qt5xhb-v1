%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|scaleChanged( const QVector3D & scale )
$slot=|rotationChanged( const QQuaternion & rotation )
$slot=|translationChanged( const QVector3D & translation )
$slot=|inverseBindMatrixChanged( const QMatrix4x4 & inverseBindMatrix )
$slot=|rotationXChanged( float rotationX )
$slot=|rotationYChanged( float rotationY )
$slot=|rotationZChanged( float rotationZ )
$slot=|nameChanged( const QString & name )
$endSlotsClass