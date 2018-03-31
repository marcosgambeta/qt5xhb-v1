%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|framePositionsChanged( const QVector<float> & positions )
$slot=|targetChanged( Qt3DCore::QTransform * target )
$slot=|easingChanged( const QEasingCurve & easing )
$slot=|targetNameChanged( const QString & name )
$slot=|startModeChanged( QKeyframeAnimation::RepeatMode startMode )
$slot=|endModeChanged( QKeyframeAnimation::RepeatMode endMode )
$endSlotsClass
