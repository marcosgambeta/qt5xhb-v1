%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

$includes

$beginSlotsClass
$signal=|scaleChanged( float scale )
$signal=|scale3DChanged( const QVector3D & scale )
$signal=|rotationChanged( const QQuaternion & rotation )
$signal=|translationChanged( const QVector3D & translation )
$signal=|matrixChanged()
$signal=|rotationXChanged( float rotationX )
$signal=|rotationYChanged( float rotationY )
$signal=|rotationZChanged( float rotationZ )
$endSlotsClass
