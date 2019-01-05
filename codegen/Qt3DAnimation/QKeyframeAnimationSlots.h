%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

$includes

$beginSlotsClass
$signal=|framePositionsChanged( const QVector<float> & positions )
$signal=|targetChanged( Qt3DCore::QTransform * target )
$signal=|easingChanged( const QEasingCurve & easing )
$signal=|targetNameChanged( const QString & name )
$signal=|startModeChanged( QKeyframeAnimation::RepeatMode startMode )
$signal=|endModeChanged( QKeyframeAnimation::RepeatMode endMode )
$endSlotsClass
