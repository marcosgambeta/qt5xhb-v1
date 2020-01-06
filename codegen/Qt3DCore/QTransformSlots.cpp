%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

$includes

$beginSlotsClass
$slot=|scaleChanged( float scale )
$slot=|scale3DChanged( const QVector3D & scale )
$slot=|rotationChanged( const QQuaternion & rotation )
$slot=|translationChanged( const QVector3D & translation )
$slot=|matrixChanged()
$slot=|rotationXChanged( float rotationX )
$slot=|rotationYChanged( float rotationY )
$slot=|rotationZChanged( float rotationZ )
$endSlotsClass
