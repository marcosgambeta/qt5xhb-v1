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
$signal=|scaleChanged( const QVector3D & scale )
$signal=|rotationChanged( const QQuaternion & rotation )
$signal=|translationChanged( const QVector3D & translation )
$signal=|inverseBindMatrixChanged( const QMatrix4x4 & inverseBindMatrix )
$signal=|rotationXChanged( float rotationX )
$signal=|rotationYChanged( float rotationY )
$signal=|rotationZChanged( float rotationZ )
$signal=|nameChanged( const QString & name )
$endSlotsClass
